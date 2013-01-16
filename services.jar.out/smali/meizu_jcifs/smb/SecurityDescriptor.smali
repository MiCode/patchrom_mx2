.class public Lmeizu_jcifs/smb/SecurityDescriptor;
.super Ljava/lang/Object;
.source "SecurityDescriptor.java"


# instance fields
.field public aces:[Lmeizu_jcifs/smb/ACE;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lmeizu_jcifs/smb/SecurityDescriptor;->decode([BII)I

    .line 32
    return-void
.end method


# virtual methods
.method public decode([BII)I
    .locals 7
    .parameter "buffer"
    .parameter "bufferIndex"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    move v4, p2

    .line 36
    .local v4, start:I
    add-int/lit8 p2, p2, 0x1

    .line 37
    add-int/lit8 p2, p2, 0x1

    .line 38
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v5

    iput v5, p0, Lmeizu_jcifs/smb/SecurityDescriptor;->type:I

    .line 39
    add-int/lit8 p2, p2, 0x2

    .line 40
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 41
    add-int/lit8 p2, p2, 0x4

    .line 42
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 43
    add-int/lit8 p2, p2, 0x4

    .line 44
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    .line 45
    add-int/lit8 p2, p2, 0x4

    .line 46
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v0

    .line 48
    .local v0, daclOffset:I
    add-int p2, v4, v0

    .line 50
    add-int/lit8 p2, p2, 0x1

    .line 51
    add-int/lit8 p2, p2, 0x1

    .line 52
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt2([BI)I

    move-result v3

    .line 53
    .local v3, size:I
    add-int/lit8 p2, p2, 0x2

    .line 54
    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v2

    .line 55
    .local v2, numAces:I
    add-int/lit8 p2, p2, 0x4

    .line 57
    const/16 v5, 0x1000

    if-le v2, v5, :cond_0

    .line 58
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Invalid SecurityDescriptor"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    :cond_0
    if-eqz v0, :cond_1

    .line 61
    new-array v5, v2, [Lmeizu_jcifs/smb/ACE;

    iput-object v5, p0, Lmeizu_jcifs/smb/SecurityDescriptor;->aces:[Lmeizu_jcifs/smb/ACE;

    .line 62
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 63
    iget-object v5, p0, Lmeizu_jcifs/smb/SecurityDescriptor;->aces:[Lmeizu_jcifs/smb/ACE;

    new-instance v6, Lmeizu_jcifs/smb/ACE;

    invoke-direct {v6}, Lmeizu_jcifs/smb/ACE;-><init>()V

    aput-object v6, v5, v1

    .line 64
    iget-object v5, p0, Lmeizu_jcifs/smb/SecurityDescriptor;->aces:[Lmeizu_jcifs/smb/ACE;

    aget-object v5, v5, v1

    invoke-virtual {v5, p1, p2}, Lmeizu_jcifs/smb/ACE;->decode([BI)I

    move-result v5

    add-int/2addr p2, v5

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1           #i:I
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lmeizu_jcifs/smb/SecurityDescriptor;->aces:[Lmeizu_jcifs/smb/ACE;

    .line 70
    :cond_2
    sub-int v5, p2, v4

    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 73
    const-string v1, "SecurityDescriptor:\n"

    .line 74
    .local v1, ret:Ljava/lang/String;
    iget-object v2, p0, Lmeizu_jcifs/smb/SecurityDescriptor;->aces:[Lmeizu_jcifs/smb/ACE;

    if-eqz v2, :cond_0

    .line 75
    const/4 v0, 0x0

    .local v0, ai:I
    :goto_0
    iget-object v2, p0, Lmeizu_jcifs/smb/SecurityDescriptor;->aces:[Lmeizu_jcifs/smb/ACE;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmeizu_jcifs/smb/SecurityDescriptor;->aces:[Lmeizu_jcifs/smb/ACE;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lmeizu_jcifs/smb/ACE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0           #ai:I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    :cond_1
    return-object v1
.end method
