
export interface ISerializable {
    public deserialize(ds: DataStream): void { };
    public serialize(ds : DataStream) : void {};
    public primaryKey(): u64 { return 0; }
}