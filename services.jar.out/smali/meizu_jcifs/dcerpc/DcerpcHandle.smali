.class public abstract Lmeizu_jcifs/dcerpc/DcerpcHandle;
.super Ljava/lang/Object;
.source "DcerpcHandle.java"

# interfaces
.implements Lmeizu_jcifs/dcerpc/DcerpcConstants;


# static fields
.field private static call_id:I


# instance fields
.field protected binding:Lmeizu_jcifs/dcerpc/DcerpcBinding;

.field protected max_recv:I

.field protected max_xmit:I

.field protected securityProvider:Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;

.field protected state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    sput v0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->call_id:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/16 v0, 0x10b8

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->max_xmit:I

    .line 107
    iget v0, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->max_xmit:I

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->max_recv:I

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->state:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->securityProvider:Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;

    return-void
.end method

.method public static getHandle(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu_jcifs/dcerpc/DcerpcHandle;
    .locals 3
    .parameter "url"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/net/MalformedURLException;,
            Lmeizu_jcifs/dcerpc/DcerpcException;
        }
    .end annotation

    .prologue
    .line 115
    const-string v0, "ncacn_np:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Lmeizu_jcifs/dcerpc/DcerpcPipeHandle;

    invoke-direct {v0, p0, p1}, Lmeizu_jcifs/dcerpc/DcerpcPipeHandle;-><init>(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)V

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Lmeizu_jcifs/dcerpc/DcerpcException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DCERPC transport not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmeizu_jcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static parseBinding(Ljava/lang/String;)Lmeizu_jcifs/dcerpc/DcerpcBinding;
    .locals 13
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/DcerpcException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 49
    .local v0, arr:[C
    const/4 v5, 0x0

    .local v5, proto:Ljava/lang/String;
    const/4 v3, 0x0

    .line 50
    .local v3, key:Ljava/lang/String;
    const/4 v1, 0x0

    .line 52
    .local v1, binding:Lmeizu_jcifs/dcerpc/DcerpcBinding;
    const/4 v7, 0x0

    .local v7, si:I
    move v4, v7

    .local v4, mark:I
    move v8, v7

    .line 54
    .local v8, state:I
    :cond_0
    aget-char v2, v0, v7

    .line 56
    .local v2, ch:C
    packed-switch v8, :pswitch_data_0

    .line 93
    :pswitch_0
    array-length v7, v0

    .line 96
    :cond_1
    :goto_0
    add-int/lit8 v7, v7, 0x1

    .line 97
    array-length v10, v0

    if-lt v7, v10, :cond_0

    .line 99
    if-eqz v1, :cond_2

    iget-object v10, v1, Lmeizu_jcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    if-nez v10, :cond_8

    .line 100
    :cond_2
    new-instance v10, Lmeizu_jcifs/dcerpc/DcerpcException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid binding URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lmeizu_jcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 58
    :pswitch_1
    const/16 v10, 0x3a

    if-ne v2, v10, :cond_1

    .line 59
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 60
    add-int/lit8 v4, v7, 0x1

    .line 61
    const/4 v8, 0x1

    goto :goto_0

    .line 65
    :pswitch_2
    const/16 v10, 0x5c

    if-ne v2, v10, :cond_3

    .line 66
    add-int/lit8 v4, v7, 0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_3
    const/4 v8, 0x2

    .line 71
    :pswitch_3
    const/16 v10, 0x5b

    if-ne v2, v10, :cond_1

    .line 72
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 73
    .local v6, server:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 74
    const-string v6, "127.0.0.1"

    .line 75
    :cond_4
    new-instance v1, Lmeizu_jcifs/dcerpc/DcerpcBinding;

    .end local v1           #binding:Lmeizu_jcifs/dcerpc/DcerpcBinding;
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v5, v10}, Lmeizu_jcifs/dcerpc/DcerpcBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .restart local v1       #binding:Lmeizu_jcifs/dcerpc/DcerpcBinding;
    add-int/lit8 v4, v7, 0x1

    .line 77
    const/4 v8, 0x5

    .line 78
    goto :goto_0

    .line 81
    .end local v6           #server:Ljava/lang/String;
    :pswitch_4
    const/16 v10, 0x3d

    if-ne v2, v10, :cond_5

    .line 82
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 83
    add-int/lit8 v4, v7, 0x1

    goto :goto_0

    .line 84
    :cond_5
    const/16 v10, 0x2c

    if-eq v2, v10, :cond_6

    const/16 v10, 0x5d

    if-ne v2, v10, :cond_1

    .line 85
    :cond_6
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, val:Ljava/lang/String;
    if-nez v3, :cond_7

    .line 87
    const-string v3, "endpoint"

    .line 88
    :cond_7
    invoke-virtual {v1, v3, v9}, Lmeizu_jcifs/dcerpc/DcerpcBinding;->setOption(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const/4 v3, 0x0

    .line 90
    goto :goto_0

    .line 102
    .end local v9           #val:Ljava/lang/String;
    :cond_8
    return-object v1

    .line 56
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public bind()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/DcerpcException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    monitor-enter p0

    .line 124
    const/4 v2, 0x1

    :try_start_0
    iput v2, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->state:I

    .line 125
    new-instance v0, Lmeizu_jcifs/dcerpc/DcerpcBind;

    iget-object v2, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->binding:Lmeizu_jcifs/dcerpc/DcerpcBinding;

    invoke-direct {v0, v2, p0}, Lmeizu_jcifs/dcerpc/DcerpcBind;-><init>(Lmeizu_jcifs/dcerpc/DcerpcBinding;Lmeizu_jcifs/dcerpc/DcerpcHandle;)V

    .line 126
    .local v0, bind:Lmeizu_jcifs/dcerpc/DcerpcMessage;
    invoke-virtual {p0, v0}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu_jcifs/dcerpc/DcerpcMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    monitor-exit p0

    .line 132
    return-void

    .line 127
    .end local v0           #bind:Lmeizu_jcifs/dcerpc/DcerpcMessage;
    :catch_0
    move-exception v1

    .line 128
    .local v1, ioe:Ljava/io/IOException;
    const/4 v2, 0x0

    iput v2, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->state:I

    .line 129
    throw v1

    .line 131
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doReceiveFragment([BZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract doSendFragment([BIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 263
    instance-of v0, p0, Lmeizu_jcifs/dcerpc/DcerpcPipeHandle;

    if-eqz v0, :cond_0

    .line 264
    check-cast p0, Lmeizu_jcifs/dcerpc/DcerpcPipeHandle;

    .end local p0
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/DcerpcPipeHandle;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbNamedPipe;->getPrincipal()Ljava/security/Principal;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    instance-of v0, p0, Lmeizu_jcifs/dcerpc/DcerpcPipeHandle;

    if-eqz v0, :cond_0

    .line 259
    check-cast p0, Lmeizu_jcifs/dcerpc/DcerpcPipeHandle;

    .end local p0
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/DcerpcPipeHandle;->pipe:Lmeizu_jcifs/smb/SmbNamedPipe;

    invoke-virtual {v0}, Lmeizu_jcifs/smb/SmbNamedPipe;->getServer()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendrecv(Lmeizu_jcifs/dcerpc/DcerpcMessage;)V
    .locals 13
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/dcerpc/DcerpcException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget v11, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->state:I

    if-nez v11, :cond_0

    .line 140
    invoke-virtual {p0}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->bind()V

    .line 143
    :cond_0
    const/4 v4, 0x1

    .line 145
    .local v4, isDirect:Z
    invoke-static {}, Lmeizu_jcifs/smb/BufferCache;->getBuffer()[B

    move-result-object v7

    .line 149
    .local v7, stub:[B
    :try_start_0
    new-instance v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    const/4 v11, 0x0

    invoke-direct {v0, v7, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    .line 151
    .local v0, buf:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
    const/4 v11, 0x3

    iput v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 152
    sget v11, Lmeizu_jcifs/dcerpc/DcerpcHandle;->call_id:I

    add-int/lit8 v12, v11, 0x1

    sput v12, Lmeizu_jcifs/dcerpc/DcerpcHandle;->call_id:I

    iput v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->call_id:I

    .line 154
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->encode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 156
    iget-object v11, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->securityProvider:Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v11, :cond_1

    .line 157
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 158
    iget-object v11, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->securityProvider:Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v11, v0}, Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;->wrap(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 161
    :cond_1
    invoke-virtual {v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->getLength()I

    move-result v11

    add-int/lit8 v10, v11, -0x18

    .line 162
    .local v10, tot:I
    const/4 v6, 0x0

    .line 164
    .local v6, off:I
    :goto_0
    if-ge v6, v10, :cond_5

    .line 165
    sub-int v5, v10, v6

    .line 167
    .local v5, n:I
    add-int/lit8 v11, v5, 0x18

    iget v12, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->max_xmit:I

    if-le v11, v12, :cond_4

    .line 168
    iget v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v11, v11, -0x3

    iput v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 169
    iget v11, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->max_xmit:I

    add-int/lit8 v5, v11, -0x18

    .line 176
    :goto_1
    add-int/lit8 v11, v5, 0x18

    iput v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->length:I

    .line 178
    if-lez v6, :cond_2

    .line 179
    iget v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v11, v11, -0x2

    iput v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 181
    :cond_2
    iget v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    and-int/lit8 v11, v11, 0x3

    const/4 v12, 0x3

    if-eq v11, v12, :cond_3

    .line 182
    iput v6, v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->start:I

    .line 183
    invoke-virtual {v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 184
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->encode_header(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 185
    iget v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->alloc_hint:I

    invoke-virtual {v0, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_long(I)V

    .line 186
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 187
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->getOpnum()I

    move-result v11

    invoke-virtual {v0, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->enc_ndr_short(I)V

    .line 190
    :cond_3
    iget v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->length:I

    invoke-virtual {p0, v7, v6, v11, v4}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->doSendFragment([BIIZ)V

    .line 191
    add-int/2addr v6, v5

    goto :goto_0

    .line 171
    :cond_4
    iget v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    or-int/lit8 v11, v11, 0x2

    iput v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->flags:I

    .line 172
    const/4 v4, 0x0

    .line 173
    iput v5, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->alloc_hint:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 246
    .end local v0           #buf:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
    .end local v5           #n:I
    .end local v6           #off:I
    .end local v10           #tot:I
    :catchall_0
    move-exception v11

    invoke-static {v7}, Lmeizu_jcifs/smb/BufferCache;->releaseBuffer([B)V

    throw v11

    .line 194
    .restart local v0       #buf:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
    .restart local v6       #off:I
    .restart local v10       #tot:I
    :cond_5
    :try_start_1
    invoke-virtual {p0, v7, v4}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    .line 195
    invoke-virtual {v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 196
    const/16 v11, 0x8

    invoke-virtual {v0, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 197
    invoke-virtual {v0}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v11

    invoke-virtual {v0, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    .line 199
    iget-object v11, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->securityProvider:Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v11, :cond_6

    .line 200
    iget-object v11, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->securityProvider:Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v11, v0}, Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 202
    :cond_6
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 204
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->decode_header(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 206
    const/16 v6, 0x18

    .line 207
    iget v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->ptype:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_7

    const/4 v11, 0x2

    invoke-virtual {p1, v11}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    move-result v11

    if-nez v11, :cond_7

    .line 208
    iget v6, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->length:I

    .line 210
    :cond_7
    const/4 v3, 0x0

    .line 211
    .local v3, frag:[B
    const/4 v2, 0x0

    .line 212
    .local v2, fbuf:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
    :goto_2
    const/4 v11, 0x2

    invoke-virtual {p1, v11}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->isFlagSet(I)Z

    move-result v11

    if-nez v11, :cond_b

    .line 215
    if-nez v3, :cond_8

    .line 216
    iget v11, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->max_recv:I

    new-array v3, v11, [B

    .line 217
    new-instance v2, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .end local v2           #fbuf:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
    const/4 v11, 0x0

    invoke-direct {v2, v3, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    .line 220
    .restart local v2       #fbuf:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
    :cond_8
    invoke-virtual {p0, v3, v4}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->doReceiveFragment([BZ)V

    .line 221
    invoke-virtual {v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 222
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->setIndex(I)V

    .line 223
    invoke-virtual {v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->dec_ndr_short()I

    move-result v11

    invoke-virtual {v2, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->setLength(I)V

    .line 225
    iget-object v11, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->securityProvider:Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;

    if-eqz v11, :cond_9

    .line 226
    iget-object v11, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->securityProvider:Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;

    invoke-interface {v11, v2}, Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;->unwrap(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 228
    :cond_9
    invoke-virtual {v2}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;->reset()V

    .line 229
    invoke-virtual {p1, v2}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->decode_header(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V

    .line 230
    iget v11, p1, Lmeizu_jcifs/dcerpc/DcerpcMessage;->length:I

    add-int/lit8 v8, v11, -0x18

    .line 232
    .local v8, stub_frag_len:I
    add-int v11, v6, v8

    array-length v12, v7

    if-le v11, v12, :cond_a

    .line 234
    add-int v11, v6, v8

    new-array v9, v11, [B

    .line 235
    .local v9, tmp:[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v7, v11, v9, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    move-object v7, v9

    .line 239
    .end local v9           #tmp:[B
    :cond_a
    const/16 v11, 0x18

    invoke-static {v3, v11, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    add-int/2addr v6, v8

    .line 241
    goto :goto_2

    .line 243
    .end local v8           #stub_frag_len:I
    :cond_b
    new-instance v0, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;

    .end local v0           #buf:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
    const/4 v11, 0x0

    invoke-direct {v0, v7, v11}, Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;-><init>([BI)V

    .line 244
    .restart local v0       #buf:Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;
    invoke-virtual {p1, v0}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->decode(Lmeizu_jcifs/dcerpc/ndr/NdrBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    invoke-static {v7}, Lmeizu_jcifs/smb/BufferCache;->releaseBuffer([B)V

    .line 249
    invoke-virtual {p1}, Lmeizu_jcifs/dcerpc/DcerpcMessage;->getResult()Lmeizu_jcifs/dcerpc/DcerpcException;

    move-result-object v1

    .local v1, de:Lmeizu_jcifs/dcerpc/DcerpcException;
    if-eqz v1, :cond_c

    .line 250
    throw v1

    .line 251
    :cond_c
    return-void
.end method

.method public setDcerpcSecurityProvider(Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;)V
    .locals 0
    .parameter "securityProvider"

    .prologue
    .line 255
    iput-object p1, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->securityProvider:Lmeizu_jcifs/dcerpc/DcerpcSecurityProvider;

    .line 256
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/DcerpcHandle;->binding:Lmeizu_jcifs/dcerpc/DcerpcBinding;

    invoke-virtual {v0}, Lmeizu_jcifs/dcerpc/DcerpcBinding;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
