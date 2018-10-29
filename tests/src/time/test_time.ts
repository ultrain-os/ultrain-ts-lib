import "allocator/arena";
import {Contract} from "../../../src/contract";
import { intToString } from "../../../src/utils";
import { TimeUtil, LocalTime, GmtTime } from "../../../src/time";
import { Return } from "../../../src/return";


export　class TimeUtilTest extends Contract {

    @action
    test(): void {
        this.epoch_start();
        this.epoch_end();
        this.epoch_end_east();
        this.epoch_end_west();

        this.normal_year_start();
        this.normal_year_end();
        this.normal_year_start_east();
        this.normal_year_start_west();
        this.normal_year_end_east();
        this.normal_year_end_west();

        this.leap_year_start();
        this.leap_year_end();
        this.leap_year_start_east();
        this.leap_year_start_west();
        this.leap_year_end_east();
        this.leap_year_end_west();
        this.leap_year_feb_start();
        this.leap_year_feb_end();
        this.leap_year_feb_start_east();
        this.leap_year_feb_start_west();
        this.leap_year_feb_end_east();
        this.leap_year_feb_end_west();

        Return<string>("TimeUtil test done.");
    }

    private do_work(time: string, secs: u32, year: u32, month: u32, day: u32, hours: u32, minutes: u32, seconds: u32, tz: string): void {
        let lt = new LocalTime();
        let valid = lt.fromUtcString(time);
        ultrain_assert(valid, "time '" + time + "' is invalid.");
        ultrain_assert(time == lt.toString(), "convert to utc string failed: " + lt.toString());
        ultrain_assert(lt.year == year, time + " : year mismatche.");
        ultrain_assert(lt.month == month, time + " : month mismatche.");
        ultrain_assert(lt.day == day, time + " : day mismatche.");
        ultrain_assert(lt.hours == hours, time + " : hours mismatche.");
        ultrain_assert(lt.minutes == minutes, time + " : minutes mismatche.");
        ultrain_assert(lt.seconds == seconds, time + " : seconds mismatche.");

        let gt = GmtTime.localTimeToGmtTime(lt);
        ultrain_assert(gt.gmtSeconds == secs, time + " convert to epoch seconds failed: " + intToString(gt.gmtSeconds));

        let utcstr = gt.toLocalTime(tz).toString();
        ultrain_assert(utcstr == time, time + " convert to utc string failed: " + utcstr);
    }

    private epoch_start(): void {
        let time = "1970-01-01T00:00:00Z+00:00";
        let secs: u32 = 0;

        this.do_work(time, secs, 1970, 1, 1, 0, 0, 0, "+00:00");
    }

    private epoch_end(): void {
        let time = "1970-12-31T23:59:59Z+00:00";
        let secs: u32 = 31535999;

        this.do_work(time, secs, 1970, 12, 31, 23, 59, 59, "+00:00");
    }

    private epoch_end_east(): void {
        let time = "1970-12-31T23:59:59Z+08:00";
        let secs: u32 = 31507199;

        this.do_work(time, secs, 1970, 12, 31, 23, 59, 59, "+08:00");
    }

    private epoch_end_west(): void {
        let time = "1970-12-31T23:59:59Z-04:00";
        let secs: u32 = 31550399;

        this.do_work(time, secs, 1970, 12, 31, 23, 59, 59, "-04:00");
    }

    //------------------------------
    private normal_year_start(): void {
        let time = "1989-01-01T00:00:00Z+00:00";
        let secs: u32 = 599616000;

        this.do_work(time, secs, 1989, 1, 1, 0, 0, 0, "+00:00");
    }

    private normal_year_end(): void {
        let time = "1989-12-31T23:59:59Z+00:00";
        let secs: u32 = 631151999;
        this.do_work(time, secs, 1989, 12, 31, 23, 59, 59, "+00:00");
    }

    private normal_year_start_east(): void {
        let time = "1989-01-01T00:00:00Z+08:00";
        let secs: u32 = 599587200;
        this.do_work(time, secs, 1989, 1, 1, 0, 0, 0, "+08:00");
    }

    private normal_year_start_west(): void {
        let time = "1989-01-01T00:00:00Z-04:00";
        let secs: u32 = 599630400;
        this.do_work(time, secs, 1989, 1, 1, 0, 0, 0, "-04:00");
    }

    private normal_year_end_east(): void {
        let time = "1989-12-31T23:59:59Z+08:00";
        let secs: u32 = 631123199;
        this.do_work(time, secs, 1989, 12, 31, 23, 59, 59, "+08:00");
    }

    private normal_year_end_west(): void {
        let time = "1989-12-31T23:59:59Z-04:00";
        let secs: u32 = 631166399;
        this.do_work(time, secs, 1989, 12, 31, 23, 59, 59, "-04:00");
    }

    //-------------------
    private leap_year_start(): void {
        let time = "2000-01-01T00:00:00Z+00:00";
        let secs: u32 = 946684800;
        this.do_work(time, secs, 2000, 1, 1, 0, 0, 0, "+00:00");
    }

    private leap_year_end(): void {
        let time = "2000-12-31T23:59:59Z+00:00";
        let secs: u32 = 978307199;
        this.do_work(time, secs, 2000, 12, 31, 23, 59, 59, "+00:00");
    }

    private leap_year_start_east(): void {
        let time = "2000-01-01T00:00:00Z+08:00";
        let secs: u32 = 946656000;
        this.do_work(time, secs, 2000, 1, 1, 0, 0, 0, "+08:00");
    }

    private leap_year_start_west(): void {
        let time = "2000-01-01T00:00:00Z-04:00";
        let secs: u32 = 946699200;
        this.do_work(time, secs, 2000, 1, 1, 0, 0, 0, "-04:00");
    }

    private leap_year_end_east(): void {
        let time = "2000-12-31T23:59:59Z+08:00";
        let secs: u32 = 978278399;
        this.do_work(time, secs, 2000, 12, 31, 23, 59, 59, "+08:00");
    }

    private leap_year_end_west(): void {
        let time = "2000-12-31T23:59:59Z-04:00";
        let secs: u32 = 978321599;

        this.do_work(time, secs, 2000, 12, 31, 23, 59, 59, "-04:00");
    }

    private leap_year_feb_start(): void {
        let time = "2000-02-29T00:00:00Z+00:00";
        let secs: u32 = 951782400; //951868800
        this.do_work(time, secs, 2000, 2, 29, 0, 0, 0, "+00:00");
    }

    private leap_year_feb_start_east(): void {
        let time = "2000-02-29T00:00:00Z+08:00";
        let secs: u32 = 951753600;
        this.do_work(time, secs, 2000, 2, 29, 0, 0, 0, "+08:00");
    }

    private leap_year_feb_start_west(): void {
        let time = "2000-02-29T00:00:00Z-04:00";
        let secs: u32 = 951796800;
        this.do_work(time, secs, 2000, 2, 29, 0, 0, 0, "-04:00");
    }

    private leap_year_feb_end(): void {
        let time = "2000-02-29T23:59:59Z+00:00";
        let secs: u32 = 951868799;

        this.do_work(time, secs, 2000, 2, 29, 23, 59, 59, "+00:00");
    }

    private leap_year_feb_end_east(): void {
        let time = "2000-02-29T23:59:59Z+08:00";
        let secs: u32 = 951839999;

        this.do_work(time, secs, 2000, 2, 29, 23, 59, 59, "+08:00");
    }

    private leap_year_feb_end_west(): void {
        let time = "2000-02-29T23:59:59Z-04:00";
        let secs: u32 = 951883199;

        this.do_work(time, secs, 2000, 2, 29, 23, 59, 59, "-04:00");
    }
}