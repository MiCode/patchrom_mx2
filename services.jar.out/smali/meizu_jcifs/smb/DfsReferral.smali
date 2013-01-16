.class public Lmeizu_jcifs/smb/DfsReferral;
.super Lmeizu_jcifs/smb/SmbException;
.source "DfsReferral.java"


# instance fields
.field public expiration:J

.field key:Ljava/lang/String;

.field public link:Ljava/lang/String;

.field map:Ljava/util/Map;

.field next:Lmeizu_jcifs/smb/DfsReferral;

.field public path:Ljava/lang/String;

.field public pathConsumed:I

.field public resolveHashes:Z

.field public server:Ljava/lang/String;

.field public share:Ljava/lang/String;

.field public ttl:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbException;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/smb/DfsReferral;->key:Ljava/lang/String;

    .line 40
    iput-object p0, p0, Lmeizu_jcifs/smb/DfsReferral;->next:Lmeizu_jcifs/smb/DfsReferral;

    .line 41
    return-void
.end method


# virtual methods
.method append(Lmeizu_jcifs/smb/DfsReferral;)V
    .locals 1
    .parameter "dr"

    .prologue
    .line 45
    iget-object v0, p0, Lmeizu_jcifs/smb/DfsReferral;->next:Lmeizu_jcifs/smb/DfsReferral;

    iput-object v0, p1, Lmeizu_jcifs/smb/DfsReferral;->next:Lmeizu_jcifs/smb/DfsReferral;

    .line 46
    iput-object p1, p0, Lmeizu_jcifs/smb/DfsReferral;->next:Lmeizu_jcifs/smb/DfsReferral;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DfsReferral[pathConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmeizu_jcifs/smb/DfsReferral;->pathConsumed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",server="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/smb/DfsReferral;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",share="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/smb/DfsReferral;->share:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/smb/DfsReferral;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/smb/DfsReferral;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ttl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmeizu_jcifs/smb/DfsReferral;->ttl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",expiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmeizu_jcifs/smb/DfsReferral;->expiration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",resolveHashes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmeizu_jcifs/smb/DfsReferral;->resolveHashes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
