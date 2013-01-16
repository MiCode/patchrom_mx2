.class public Lmeizu_jcifs/smb/SmbShareInfo;
.super Ljava/lang/Object;
.source "SmbShareInfo.java"

# interfaces
.implements Lmeizu_jcifs/smb/FileEntry;


# instance fields
.field protected netName:Ljava/lang/String;

.field protected remark:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "netName"
    .parameter "type"
    .parameter "remark"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lmeizu_jcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    .line 34
    iput p2, p0, Lmeizu_jcifs/smb/SmbShareInfo;->type:I

    .line 35
    iput-object p3, p0, Lmeizu_jcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public createTime()J
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 65
    instance-of v1, p1, Lmeizu_jcifs/smb/SmbShareInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 66
    check-cast v0, Lmeizu_jcifs/smb/SmbShareInfo;

    .line 67
    .local v0, si:Lmeizu_jcifs/smb/SmbShareInfo;
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    iget-object v2, v0, Lmeizu_jcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 69
    .end local v0           #si:Lmeizu_jcifs/smb/SmbShareInfo;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAttributes()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x11

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 43
    iget v0, p0, Lmeizu_jcifs/smb/SmbShareInfo;->type:I

    const v1, 0xffff

    and-int/2addr v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    :pswitch_0
    const/16 v0, 0x8

    :goto_0
    return v0

    .line 45
    :pswitch_1
    const/16 v0, 0x20

    goto :goto_0

    .line 47
    :pswitch_2
    const/16 v0, 0x10

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lmeizu_jcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 73
    .local v0, hashCode:I
    return v0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbShareInfo[netName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbShareInfo;->netName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/SmbShareInfo;->type:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",remark="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SmbShareInfo;->remark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
