import { intToString } from "./utils";
import { env as system } from "../internal/system.d";

/**
 * This function return the head block time, it is in seconds since epoch.
 *
 * @example
 * import { now } from "ultrain-ts-lib/src/time";
 */
export function now(): u32 { return <u32>(system.current_time() / 1000000); }

const SecondsPerDay: u32  = 60 * 60 * 24;
const SecondsPerYear: u32 = 60 * 60 * 24 * 365;

class TimeZone {
    hours: u32 = 0;
    minutes: u32 = 0;
    isEast: boolean = true;

    parse(timezone: string): boolean {
        let tzlabel = timezone.charCodeAt(0);
        ultrain_assert(tzlabel == 0x2b || tzlabel == 0x2d, "timezone of utc string '" + timezone + "' is invalid.");
        this.isEast = (tzlabel == 0x2b);
        let a = timezone.substring(1, timezone.length);
        let tzhm = a.split(":");
        ultrain_assert(tzhm.length == 2, "timezone of utc string '" + timezone + "' is invalid.");
        this.hours = <u32>I32.parseInt(tzhm[0]);
        this.minutes = <u32>I32.parseInt(tzhm[1]);
        return !isNaN(this.hours) && !isNaN(this.minutes);
    }

    isValid(): boolean {
        let status = this.hours >=0 && this.hours <= 12;
        status = this.minutes >=0 && this.minutes <= 59 && status;
        return status;
    }

    toString(): string {
        let str = this.isEast ? "Z+" : "Z-";
        str += intToString(this.hours, 2);
        str += ":";
        str += intToString(this.minutes, 2);

        return str;
    }

    seconds(): u32 {
        return this.hours * 3600 + this.minutes * 60;
    }
}

function getDaysOfMonth(year: u32) : u32[] {
    let DaysOfMonth: u32[] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
    if (GmtTime.isLeapYear(year)) {
        DaysOfMonth[1] = 29;
    }
    return DaysOfMonth;
}

/**
 * class LocalTime stands for a calender time according to a specific TimeZone.
 *
 * @class LocalTime
 *
 * @example
 * import { LocalTime } from "ultrain-ts-lib/src/time;"
 */
export class LocalTime {
    year    : u32 = 0;
    month   : u32 = 0;  /* 0 ~ 11 */
    day     : u32 = 0;
    hours   : u32 = 0;
    minutes: u32  = 0;
    seconds: u32  = 0;

    timezone: TimeZone = new TimeZone();

    /**
     * to check if a setted LocalTime is valid or not.
     * @return boolean
     */
    isValid(): boolean {
        let daysOfMonth: u32[] = getDaysOfMonth(this.year);

        let status = this.month >=1 && this.month <= 12;
        status = this.day >= 1 && this.day <= daysOfMonth[this.month - 1] && status;
        status = this.hours >= 0 && this.hours <= 23 && status;
        status = this.minutes >=0 && this.minutes <= 59 && status;
        status = this.seconds >=0 && this.seconds <= 59 && status;
        status = this.timezone.isValid() && status;

        return status;
    }

    dayOfYear(): u32 {
        let daysOfMonth: u32[] = getDaysOfMonth(this.year);
        let   yday: u32          = 0;
        for (let i: i32 = 0; i < <i32>(this.month - 1); i++) {
            yday += daysOfMonth[i];
        }

        yday += this.day;

        yday -= 1; // minus current day
        return yday;
    }

    private parseUtcString(utcstr: string): string[] {
        let result = new Array<string>();
        let dt = utcstr.split("T");

        ultrain_assert(dt.length == 2, "utc string '" + utcstr + "' is invalid.");

        let ds = dt[0].split("-");
        ultrain_assert(ds.length == 3, "date of utc string '" + dt[0] + "' is invalid.");
        result.push(ds[0]); // year
        result.push(ds[1]); // month
        result.push(ds[2]); // day

        let hmsstr = dt[1];
        let tz     = "";
        if (dt[1].includes("Z")) {// 设置了timezone信息
            let tzs    = dt[1].split("Z");
            hmsstr = tzs[0];
            tz     = tzs[1];
        }

        let hms = hmsstr.split(":");
        ultrain_assert(hms.length == 3, "time of utc string '" + dt[1] + "' is invalid.");
        result.push(hms[0]); // hour
        result.push(hms[1]); // minutes
        result.push(hms[2]); // seconds

        if (tz.length == 0) {
            this.timezone.parse("+00:00");
        } else {
            this.timezone.parse(tz);
        }

        return result;
    }
    /**
     * convert an utc time string to LocalTime.
     * A valid utc time string must be formatted as '1989-06-04T10:30:00Z+08:00',
     * "Z+08:00" is time zone setting, it is "Asia/Shanghai",
     * also "Z+00:00" is time zone of Greenwich.
     * @param str a readable UTC date-time string, such as '1989-06-04T10:30:00Z+08:00'
     */
    fromUtcString(str: string): boolean {
        let infos = this.parseUtcString(str);
        ultrain_assert(infos.length == 6, "utc string is invalid.");
        let year = I32.parseInt(infos[0]);
        ultrain_assert(!isNaN(year), "year of utc string is invalid.");

        let month = I32.parseInt(infos[1]);
        ultrain_assert(!isNaN(month), "month of utc string is invalid.");

        let day = I32.parseInt(infos[2]);
        ultrain_assert(!isNaN(day), "day of utc string is invalid.");

        let hours = I32.parseInt(infos[3]);
        ultrain_assert(!isNaN(hours), "hours of utc string is invalid.");

        let minutes = I32.parseInt(infos[4]);
        ultrain_assert(!isNaN(minutes), "minutes of utc string is invalid.");

        let seconds = I32.parseInt(infos[5]);
        ultrain_assert(!isNaN(seconds), "seconds of utc string is invalid.");

        this.year       = <u32>year;
        this.month      = <u32>month;
        this.day        = <u32>day;
        this.hours      = <u32>hours;
        this.minutes    = <u32>minutes;
        this.seconds    = <u32>seconds;

        return this.isValid();
    }

    /**
     * init a LocalTime instance by GmtTime and TimeZone.
     * @param gmt GmtTime, stands for the seconds since EPOCH.
     * @param tz time zone of LocalTime.
     */
    fromGmtTimeWithTimeZone(gmt: GmtTime, tz: TimeZone): boolean {
        let secs = gmt.gmtSeconds;
        if (tz.isEast) {
            secs += tz.seconds();
        } else {
            secs -= tz.seconds();
        }

        this.seconds = secs % 60;
        this.minutes = (secs % 3600) / 60;
        this.hours = (secs % SecondsPerDay) / 3600;
        this.timezone = tz;

        let days = secs/SecondsPerDay;
        let year = 1970;

        while(true) {
            if (GmtTime.isLeapYear(year)) {
                if (days >= 366) {
                    days -= 366;
                    year++;
                } else {
                    break;
                }
            } else {
                if (days >= 365) {
                    days -= 365;
                    year++
                } else {
                    break;
                }
            }
        }

        this.year = year;

        let daysOfMonth: u32[] = getDaysOfMonth(this.year);

        this.month = 0;
        for (let i: i32 = 0; i < 12; i++) {
            this.month = i + 1;
            if (days < daysOfMonth[i]) break;

            days -= daysOfMonth[i];
        }

        this.day = days + 1;

        return this.isValid();
    }

    /**
     * format a LocalTime instance as "yyyy-mm-ddThh:mm:ssZ+hh:mm" according to its time zone.
     *
     * @return a string.
     */
    toString(): string {
        let str = "";
        str += intToString(this.year) + '-' + intToString(this.month, 2) + '-' + intToString(this.day, 2);
        str += "T"
        str += intToString(this.hours, 2) + ':' + intToString(this.minutes, 2) + ':' + intToString(this.seconds, 2);
        str += this.timezone.toString();

        return str;
    }

}

/**
 * class GmtTime stands for a GMT time.
 *
 * @class GmtTime
 *
 * @example
 * import { GmtTime } from "ultrain-ts-lib/src/time;"
 */
export class GmtTime {
    gmtSeconds: u32 = 0;

    constructor(seconds: u32 = 0) {
        this.gmtSeconds = seconds;
    }

    /**
     * convert GmtTime to LocalTime according to TimeZone.
     * @param timezone a string stands for UTC time zone. It must be formatted as "+hh:mm" which means
     * east time zone, and "-hh:mm" which means west time zone.
     */
    toLocalTime(timezone: string): LocalTime {
        let tz = new TimeZone();
        let valid = tz.parse(timezone);
        ultrain_assert(valid, "timezone string '"+ timezone + "' is invalid.");

        let lt = new LocalTime();
        lt.fromGmtTimeWithTimeZone(this, tz);
        return lt;
    }

    /**
     * to judge a "yyyy" is a leap year or not.
     * @param year a u32 value "yyyy" stands for year.
     */
    static isLeapYear(year: u32): boolean {
        if (year % 4 == 0 && year % 100 != 0) return true;
        if (year % 400 == 0) return true;
        return false;
    }

    /**
     * calculate gap of seconds between local times.
     * @param time left time to compare
     * @param base right time to compare.
     * @return u32, unit is seconds.
     */
    static secondsBetweenLocalTime(time: LocalTime, base: LocalTime): u32 {
        let secs = GmtTime.localTimeToGmtTime(time).gmtSeconds - GmtTime.localTimeToGmtTime(base).gmtSeconds;
        return secs;
    }

    /**
     * convert a local time to Gmttime.
     * @param a local time to convert.
     * @return GmtTime instance.
     */
    static localTimeToGmtTime(a: LocalTime): GmtTime {
        let ayear = a.year - 1900;
        let ayday = a.dayOfYear();
        let secs: u32 = a.seconds + a.minutes * 60 + a.hours * 3600 + ayday * SecondsPerDay
            + (ayear - 70) * SecondsPerYear + ((ayear - 69) / 4) * SecondsPerDay - ((ayear - 1) / 100) * SecondsPerDay + ((ayear + 299) / 400) * SecondsPerDay;

        if (a.timezone.isEast) {
            secs -= a.timezone.seconds();
        } else {
            secs += a.timezone.seconds();
        }

        return new GmtTime(secs);
    }

    /**
     * get an Epoch GmtTime instance, which stands for "1970-01-01T00:00:00Z+00:00".
     *
     * @return GmtTime stands for EPOCH.
     */
    static epoch(): GmtTime {
        let epo = new LocalTime();
        epo.year = 1970;
        epo.month = 1;
        epo.day = 1;
        epo.hours = 0;
        epo.minutes = 0;
        epo.seconds = 0;
        epo.timezone = new TimeZone();

        return GmtTime.localTimeToGmtTime(epo);
    }
}

/**
 * class TimeUtil provides tools to convert utc time string to LocalTime and GmtTime.
 *
 * @class TimeUtil
 *
 * @example
 * import { TimeUtil } from "ultrain-ts-lib/src/time;"
 */
export class TimeUtil {

    static toLocalTime(utcStr: string): LocalTime {
        let lt = new LocalTime();
        let valid = lt.fromUtcString(utcStr);
        ultrain_assert(valid, "utc string '" + utcStr + "' is invalid.");
        return lt;
    }

    static toGmtTime(utcStr: string): GmtTime {
        let lt = TimeUtil.toLocalTime(utcStr);
        let gt = GmtTime.localTimeToGmtTime(lt);
        return gt;
    }
}
