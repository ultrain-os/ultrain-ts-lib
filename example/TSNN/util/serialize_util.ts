

export function serializeMap<K, V>(mp: Map<K, V>, ds: DataStream): void {
    let keys = mp.keys();
    let cnt = keys.length;

    ds.write<i32>(cnt);
    for (let i = 0; i < cnt; i++) {
        ds.write<K>(keys[i]);
        ds.write<V>(mp.get(keys[i]));
    }
}

export function deserializeMap<K, V>(mp: Map<K, V>, ds: DataStream): void {
    let cnt = ds.read<i32>();

    for (let i = 0; i < cnt; i++) {
        let key = ds.read<K>();
        let val = ds.read<V>();
        mp.set(key, val);
    }
}

export function serializeMapString<K>(mp: Map<K, string>, ds: DataStream): void {
    let keys = mp.keys();
    let cnt = keys.length;

    ds.write<i32>(cnt);
    for (let i = 0; i < cnt; i++) {
        ds.write<K>(keys[i]);
        ds.writeString(mp.get(keys[i]));
    }
}

export function deserializeMapString<K>(mp: Map<K, string>, ds: DataStream): void {
    let cnt = ds.read<i32>();

    for (let i = 0; i < cnt; i++) {
        let key = ds.read<K>();
        let val = ds.readString();
        mp.set(key, val);
    }
}

export function serializeMapArray<K, V>(mp: Map<K, Array<V>>, ds: DataStream): void {
    let keys = mp.keys();
    let cnt = keys.length;

    ds.write<i32>(cnt);
    for (let i = 0; i < cnt; i++) {
        ds.write<K>(keys[i]);
        ds.writeVector<V>(mp.get(keys[i]));
    }
}

export function deserializeMapArray<K, V>(mp: Map<K, Array<V>>, ds: DataStream): void {
    let cnt = ds.read<i32>();

    for (let i = 0; i < cnt; i++) {
        let key = ds.read<K>();
        let val = ds.readVector<V>();
        mp.set(key, val);
    }
}

export function serializeMapStringArray<K>(mp: Map<K, Array<string>>, ds: DataStream): void {
    let keys = mp.keys();
    let cnt = keys.length;

    ds.write<i32>(cnt);
    for (let i = 0; i < cnt; i++) {
        ds.write<K>(keys[i]);
        ds.writeStringVector(mp.get(keys[i]));
    }
}

export function deserializeMapStringArray<K>(mp: Map<K, Array<string>>, ds: DataStream): void {
    let cnt = ds.read<i32>();

    for (let i = 0; i < cnt; i++) {
        let key = ds.read<K>();
        let val = ds.readStringVector();
        mp.set(key, val);
    }
}