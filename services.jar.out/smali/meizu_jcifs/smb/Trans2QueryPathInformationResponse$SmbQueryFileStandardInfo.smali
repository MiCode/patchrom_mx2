.class Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;
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
    name = "SmbQueryFileStandardInfo"
.end annotation


# instance fields
.field allocationSize:J

.field deletePending:Z

.field directory:Z

.field endOfFile:J

.field numberOfLinks:I

.field final synthetic this$0:Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->this$0:Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributes()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLastWriteTime()J
    .locals 2

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbQueryInfoStandard[allocationSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->allocationSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",endOfFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->endOfFile:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",numberOfLinks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->numberOfLinks:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",deletePending="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->deletePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",directory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmeizu_jcifs/smb/Trans2QueryPathInformationResponse$SmbQueryFileStandardInfo;->directory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
