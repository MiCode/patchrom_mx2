.class Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;
.super Lmeizu_jcifs/smb/SmbComTransactionResponse;
.source "TransPeekNamedPipeResponse.java"


# static fields
.field static final STATUS_CONNECTION_OK:I = 0x3

.field static final STATUS_DISCONNECTED:I = 0x1

.field static final STATUS_LISTENING:I = 0x2

.field static final STATUS_SERVER_END_CLOSED:I = 0x4


# instance fields
.field available:I

.field private head:I

.field private pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

.field status:I


# direct methods
.method constructor <init>(Lmeizu_jcifs/smb/SmbNamedPipe;)V
    .locals 0
    .parameter "pipe"

    .prologue
    .line 33
    invoke-direct {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;-><init>()V

    .line 34
    iput-object p1, p0, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    .line 35
    return-void
.end method


# virtual methods
.method readDataWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method readParametersWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 50
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;->available:I

    add-int/lit8 p2, p2, 0x2

    .line 51
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;->head:I

    add-int/lit8 p2, p2, 0x2

    .line 52
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;->readInt2([BI)I

    move-result v0

    iput v0, p0, Lmeizu_jcifs/smb/TransPeekNamedPipeResponse;->status:I

    .line 53
    const/4 v0, 0x6

    return v0
.end method

.method readSetupWireFormat([BII)I
    .locals 1
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransPeekNamedPipeResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/smb/SmbComTransactionResponse;->toString()Ljava/lang/String;

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

.method writeDataWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method writeParametersWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method writeSetupWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method
