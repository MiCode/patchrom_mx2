.class Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;
.super Ljava/lang/Object;
.source "NetServerEnum2Response.java"

# interfaces
.implements Lmeizu_jcifs/smb/FileEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu_jcifs/smb/NetServerEnum2Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerInfo1"
.end annotation


# instance fields
.field commentOrMasterBrowser:Ljava/lang/String;

.field name:Ljava/lang/String;

.field final synthetic this$0:Lmeizu_jcifs/smb/NetServerEnum2Response;

.field type:I

.field versionMajor:I

.field versionMinor:I


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/NetServerEnum2Response;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->this$0:Lmeizu_jcifs/smb/NetServerEnum2Response;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTime()J
    .locals 2

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAttributes()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x11

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    const/high16 v1, -0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServerInfo1[name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",versionMajor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMajor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",versionMinor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->versionMinor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->type:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lmeizu_jcifs/util/Hexdump;->toHexString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",commentOrMasterBrowser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/NetServerEnum2Response$ServerInfo1;->commentOrMasterBrowser:Ljava/lang/String;

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
