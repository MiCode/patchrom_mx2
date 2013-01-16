.class Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;
.super Ljava/lang/Object;
.source "Trans2QueryFSInformationResponse.java"

# interfaces
.implements Lmeizu_jcifs/smb/AllocInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmbInfoAllocation"
.end annotation


# instance fields
.field alloc:J

.field bytesPerSect:I

.field free:J

.field sectPerAlloc:I

.field final synthetic this$0:Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->this$0:Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCapacity()J
    .locals 4

    .prologue
    .line 37
    iget-wide v0, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    iget v2, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getFree()J
    .locals 4

    .prologue
    .line 40
    iget-wide v0, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    iget v2, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget v2, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmbInfoAllocation[alloc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->alloc:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",free="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->free:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sectPerAlloc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->sectPerAlloc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bytesPerSect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/Trans2QueryFSInformationResponse$SmbInfoAllocation;->bytesPerSect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
