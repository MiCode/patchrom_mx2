.class Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;
.super Ljava/lang/Object;
.source "Trans2QueryPathInformationResponse.java"

# interfaces
.implements Lmeizu_jcifs/smb/Info;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmbQueryFileBasicInfo"
.end annotation


# instance fields
.field attributes:I

.field changeTime:J

.field createTime:J

.field lastAccessTime:J

.field lastWriteTime:J

.field final synthetic this$0:Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->this$0:Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributes()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->attributes:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->createTime:J

    return-wide v0
.end method

.method public getLastWriteTime()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastWriteTime:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 50
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbQueryFileBasicInfo[createTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->createTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastAccessTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastAccessTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lastWriteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->lastWriteTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",changeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->changeTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",attributes=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileBasicInfo;->attributes:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

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
