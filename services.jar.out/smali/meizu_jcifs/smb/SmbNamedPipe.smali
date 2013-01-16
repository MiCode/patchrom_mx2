.class public Lmeizu_jcifs/smb/SmbNamedPipe;
.super Lmeizu_jcifs/smb/SmbFile;
.source "SmbNamedPipe.java"


# static fields
.field public static final PIPE_TYPE_CALL:I = 0x100

.field public static final PIPE_TYPE_DCE_TRANSACT:I = 0x600

.field public static final PIPE_TYPE_RDONLY:I = 0x1

.field public static final PIPE_TYPE_RDWR:I = 0x3

.field public static final PIPE_TYPE_TRANSACT:I = 0x200

.field public static final PIPE_TYPE_WRONLY:I = 0x2


# instance fields
.field pipeIn:Ljava/io/InputStream;

.field pipeOut:Ljava/io/OutputStream;

.field pipeType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "url"
    .parameter "pipeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 135
    iput p2, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    .line 136
    const/16 v0, 0x10

    iput v0, p0, Lmeizu_jcifs/smb/SmbFile;->type:I

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILmeizu_jcifs/smb/NtlmPasswordAuthentication;)V
    .locals 1
    .parameter "url"
    .parameter "pipeType"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0, p1, p3}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)V

    .line 141
    iput p2, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    .line 142
    const/16 v0, 0x10

    iput v0, p0, Lmeizu_jcifs/smb/SmbFile;->type:I

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;ILmeizu_jcifs/smb/NtlmPasswordAuthentication;)V
    .locals 1
    .parameter "url"
    .parameter "pipeType"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-direct {p0, p1, p3}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/net/URL;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)V

    .line 147
    iput p2, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    .line 148
    const/16 v0, 0x10

    iput v0, p0, Lmeizu_jcifs/smb/SmbFile;->type:I

    .line 149
    return-void
.end method


# virtual methods
.method public getNamedPipeInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    if-nez v0, :cond_1

    .line 164
    iget v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_2

    .line 166
    :cond_0
    new-instance v0, Lmeizu_jcifs/smb/TransactNamedPipeInputStream;

    invoke-direct {v0, p0}, Lmeizu_jcifs/smb/TransactNamedPipeInputStream;-><init>(Lmeizu_jcifs/smb/SmbNamedPipe;)V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    .line 172
    :cond_1
    :goto_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    return-object v0

    .line 168
    :cond_2
    new-instance v0, Lmeizu_jcifs/smb/SmbFileInputStream;

    iget v1, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    const v2, -0xff01

    and-int/2addr v1, v2

    or-int/lit8 v1, v1, 0x20

    invoke-direct {v0, p0, v1}, Lmeizu_jcifs/smb/SmbFileInputStream;-><init>(Lmeizu_jcifs/smb/SmbFile;I)V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeIn:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getNamedPipeOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 185
    iget v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_2

    .line 187
    :cond_0
    new-instance v0, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;

    invoke-direct {v0, p0}, Lmeizu_jcifs/smb/TransactNamedPipeOutputStream;-><init>(Lmeizu_jcifs/smb/SmbNamedPipe;)V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    .line 193
    :cond_1
    :goto_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    return-object v0

    .line 189
    :cond_2
    new-instance v0, Lmeizu_jcifs/smb/SmbFileOutputStream;

    const/4 v1, 0x0

    iget v2, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeType:I

    const v3, -0xff01

    and-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x20

    invoke-direct {v0, p0, v1, v2}, Lmeizu_jcifs/smb/SmbFileOutputStream;-><init>(Lmeizu_jcifs/smb/SmbFile;ZI)V

    iput-object v0, p0, Lmeizu_jcifs/smb/SmbNamedPipe;->pipeOut:Ljava/io/OutputStream;

    goto :goto_0
.end method
