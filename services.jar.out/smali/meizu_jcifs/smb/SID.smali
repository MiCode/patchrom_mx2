.class public Lmeizu_jcifs/smb/SID;
.super Lmeizu_jcifs/dcerpc/rpc$sid_t;
.source "SID.java"


# static fields
.field public static CREATOR_OWNER:Lmeizu_jcifs/smb/SID; = null

.field public static EVERYONE:Lmeizu_jcifs/smb/SID; = null

.field public static final SID_FLAG_RESOLVE_SIDS:I = 0x1

.field public static final SID_TYPE_ALIAS:I = 0x4

.field public static final SID_TYPE_DELETED:I = 0x6

.field public static final SID_TYPE_DOMAIN:I = 0x3

.field public static final SID_TYPE_DOM_GRP:I = 0x2

.field public static final SID_TYPE_INVALID:I = 0x7

.field static final SID_TYPE_NAMES:[Ljava/lang/String; = null

.field public static final SID_TYPE_UNKNOWN:I = 0x8

.field public static final SID_TYPE_USER:I = 0x1

.field public static final SID_TYPE_USE_NONE:I = 0x0

.field public static final SID_TYPE_WKN_GRP:I = 0x5

.field public static SYSTEM:Lmeizu_jcifs/smb/SID;

.field static sid_cache:Ljava/util/Map;


# instance fields
.field acctName:Ljava/lang/String;

.field domainName:Ljava/lang/String;

.field origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

.field origin_server:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "User"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Domain group"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Domain"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Local group"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Builtin group"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Invalid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lmeizu_jcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    .line 73
    sput-object v3, Lmeizu_jcifs/smb/SID;->EVERYONE:Lmeizu_jcifs/smb/SID;

    .line 74
    sput-object v3, Lmeizu_jcifs/smb/SID;->CREATOR_OWNER:Lmeizu_jcifs/smb/SID;

    .line 75
    sput-object v3, Lmeizu_jcifs/smb/SID;->SYSTEM:Lmeizu_jcifs/smb/SID;

    .line 79
    :try_start_0
    new-instance v0, Lmeizu_jcifs/smb/SID;

    const-string v1, "S-1-1-0"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmeizu_jcifs/smb/SID;->EVERYONE:Lmeizu_jcifs/smb/SID;

    .line 80
    new-instance v0, Lmeizu_jcifs/smb/SID;

    const-string v1, "S-1-3-0"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmeizu_jcifs/smb/SID;->CREATOR_OWNER:Lmeizu_jcifs/smb/SID;

    .line 81
    new-instance v0, Lmeizu_jcifs/smb/SID;

    const-string v1, "S-1-5-18"

    invoke-direct {v0, v1}, Lmeizu_jcifs/smb/SID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmeizu_jcifs/smb/SID;->SYSTEM:Lmeizu_jcifs/smb/SID;
    :try_end_0
    .catch Lmeizu_jcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .parameter "textual"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmeizu_jcifs/smb/SmbException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 294
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$sid_t;-><init>()V

    .line 268
    iput-object v5, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 269
    iput-object v5, p0, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 270
    iput-object v5, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 271
    iput-object v5, p0, Lmeizu_jcifs/smb/SID;->origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 295
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, "-"

    invoke-direct {v3, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .local v3, st:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "S"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 298
    :cond_0
    new-instance v5, Lmeizu_jcifs/smb/SmbException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad textual SID format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lmeizu_jcifs/smb/SmbException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 300
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v5

    iput-byte v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    .line 301
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, tmp:Ljava/lang/String;
    const-wide/16 v1, 0x0

    .line 303
    .local v1, id:J
    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 304
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    .line 308
    :goto_0
    const/4 v5, 0x6

    new-array v5, v5, [B

    iput-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 309
    const/4 v0, 0x5

    .local v0, i:I
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_3

    .line 310
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const-wide/16 v6, 0x100

    rem-long v6, v1, v6

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    .line 311
    const/16 v5, 0x8

    shr-long/2addr v1, v5

    .line 309
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 306
    .end local v0           #i:I
    :cond_2
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 314
    .restart local v0       #i:I
    :cond_3
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    int-to-byte v5, v5

    iput-byte v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 315
    iget-byte v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-lez v5, :cond_4

    .line 316
    iget-byte v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    new-array v5, v5, [I

    iput-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 317
    const/4 v0, 0x0

    :goto_2
    iget-byte v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v0, v5, :cond_4

    .line 318
    iget-object v5, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v5, v0

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 320
    :cond_4
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "sid"
    .parameter "type"
    .parameter "domainName"
    .parameter "acctName"
    .parameter "decrementAuthority"

    .prologue
    const/4 v1, 0x0

    .line 343
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$sid_t;-><init>()V

    .line 268
    iput-object v1, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 269
    iput-object v1, p0, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 270
    iput-object v1, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 271
    iput-object v1, p0, Lmeizu_jcifs/smb/SID;->origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 344
    iget-byte v1, p1, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    iput-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    .line 345
    iget-byte v1, p1, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iput-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 346
    iget-object v1, p1, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 347
    iget-object v1, p1, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 348
    iput p2, p0, Lmeizu_jcifs/smb/SID;->type:I

    .line 349
    iput-object p3, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 350
    iput-object p4, p0, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 352
    if-eqz p5, :cond_0

    .line 353
    iget-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 354
    iget-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    new-array v1, v1, [I

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 355
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v0, v1, :cond_0

    .line 356
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-object v2, p1, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public constructor <init>(Lmeizu_jcifs/smb/SID;I)V
    .locals 3
    .parameter "domsid"
    .parameter "rid"

    .prologue
    const/4 v1, 0x0

    .line 328
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$sid_t;-><init>()V

    .line 268
    iput-object v1, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 269
    iput-object v1, p0, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 270
    iput-object v1, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 271
    iput-object v1, p0, Lmeizu_jcifs/smb/SID;->origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 329
    iget-byte v1, p1, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    iput-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    .line 330
    iget-object v1, p1, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 331
    iget-byte v1, p1, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 332
    iget-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    new-array v1, v1, [I

    iput-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 334
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-byte v1, p1, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v0, v1, :cond_0

    .line 335
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-object v2, p1, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aput p2, v1, v0

    .line 338
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 5
    .parameter "src"
    .parameter "si"

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x0

    .line 276
    invoke-direct {p0}, Lmeizu_jcifs/dcerpc/rpc$sid_t;-><init>()V

    .line 268
    iput-object v2, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 269
    iput-object v2, p0, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 270
    iput-object v2, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 271
    iput-object v2, p0, Lmeizu_jcifs/smb/SID;->origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 277
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, si:I
    aget-byte v2, p1, p2

    iput-byte v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    .line 278
    add-int/lit8 p2, v1, 0x1

    .end local v1           #si:I
    .restart local p2
    aget-byte v2, p1, v1

    iput-byte v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .line 279
    new-array v2, v4, [B

    iput-object v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    .line 280
    iget-object v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    add-int/lit8 p2, p2, 0x6

    .line 282
    iget-byte v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    .line 283
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid SID sub_authority_count"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_0
    iget-byte v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    new-array v2, v2, [I

    iput-object v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    .line 285
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-byte v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v0, v2, :cond_1

    .line 286
    iget-object v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    invoke-static {p1, p2}, Lmeizu_jcifs/smb/ServerMessageBlock;->readInt4([BI)I

    move-result v3

    aput v3, v2, v0

    .line 287
    add-int/lit8 p2, p2, 0x4

    .line 285
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    :cond_1
    return-void
.end method

.method static getGroupMemberSids0(Lmeizu_jcifs/dcerpc/DcerpcHandle;Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;Lmeizu_jcifs/smb/SID;II)[Lmeizu_jcifs/smb/SID;
    .locals 18
    .parameter "handle"
    .parameter "domainHandle"
    .parameter "domsid"
    .parameter "rid"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    const/4 v9, 0x0

    .line 570
    .local v9, aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    new-instance v16, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    invoke-direct/range {v16 .. v16}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;-><init>()V

    .line 571
    .local v16, sidarray:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;
    const/4 v14, 0x0

    .line 574
    .local v14, rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
    :try_start_0
    new-instance v10, Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;

    const v3, 0x2000c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v10, v0, v1, v3, v2}, Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;-><init>(Lmeizu_jcifs/dcerpc/DcerpcHandle;Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 575
    .end local v9           #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    .local v10, aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    :try_start_1
    new-instance v15, Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;

    move-object/from16 v0, v16

    invoke-direct {v15, v10, v0}, Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;-><init>(Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 576
    .end local v14           #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
    .local v15, rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu_jcifs/dcerpc/DcerpcMessage;)V

    .line 577
    iget v3, v15, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->retval:I

    if-eqz v3, :cond_1

    .line 578
    new-instance v3, Lmeizu_jcifs/smb/SmbException;

    iget v4, v15, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->retval:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lmeizu_jcifs/smb/SmbException;-><init>(IZ)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 599
    :catchall_0
    move-exception v3

    move-object v14, v15

    .end local v15           #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
    .restart local v14       #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
    move-object v9, v10

    .end local v10           #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    .restart local v9       #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    :goto_0
    if-eqz v9, :cond_0

    .line 600
    invoke-virtual {v9}, Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    :cond_0
    throw v3

    .line 579
    .end local v9           #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    .end local v14           #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
    .restart local v10       #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    .restart local v15       #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
    :cond_1
    :try_start_3
    iget-object v3, v15, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iget v3, v3, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->num_sids:I

    new-array v0, v3, [Lmeizu_jcifs/smb/SID;

    move-object/from16 v17, v0

    .line 581
    .local v17, sids:[Lmeizu_jcifs/smb/SID;
    invoke-virtual/range {p0 .. p0}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->getServer()Ljava/lang/String;

    move-result-object v13

    .line 582
    .local v13, origin_server:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->getPrincipal()Ljava/security/Principal;

    move-result-object v12

    check-cast v12, Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 585
    .local v12, origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, v17

    array-length v3, v0

    if-ge v11, v3, :cond_2

    .line 586
    new-instance v3, Lmeizu_jcifs/smb/SID;

    iget-object v4, v15, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrGetMembersInAlias;->sids:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidArray;->sids:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;

    aget-object v4, v4, v11

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarSidPtr;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lmeizu_jcifs/smb/SID;-><init>(Lmeizu_jcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v3, v17, v11

    .line 591
    aget-object v3, v17, v11

    iput-object v13, v3, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 592
    aget-object v3, v17, v11

    iput-object v12, v3, Lmeizu_jcifs/smb/SID;->origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 585
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 594
    :cond_2
    move-object/from16 v0, v17

    array-length v3, v0

    if-lez v3, :cond_3

    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3

    .line 595
    move-object/from16 v0, v17

    invoke-static {v13, v12, v0}, Lmeizu_jcifs/smb/SID;->resolveSids(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;[Lmeizu_jcifs/smb/SID;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 599
    :cond_3
    if-eqz v10, :cond_4

    .line 600
    invoke-virtual {v10}, Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;->close()V

    :cond_4
    return-object v17

    .line 599
    .end local v10           #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    .end local v11           #i:I
    .end local v12           #origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;
    .end local v13           #origin_server:Ljava/lang/String;
    .end local v15           #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
    .end local v17           #sids:[Lmeizu_jcifs/smb/SID;
    .restart local v9       #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    .restart local v14       #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcGetMembersInAlias;
    :catchall_1
    move-exception v3

    goto :goto_0

    .end local v9           #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    .restart local v10       #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    :catchall_2
    move-exception v3

    move-object v9, v10

    .end local v10           #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    .restart local v9       #aliasHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrAliasHandle;
    goto :goto_0
.end method

.method static getLocalGroupsMap(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;I)Ljava/util/Map;
    .locals 22
    .parameter "authorityServerName"
    .parameter "auth"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    invoke-static/range {p0 .. p1}, Lmeizu_jcifs/smb/SID;->getServerSid(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu_jcifs/smb/SID;

    move-result-object v5

    .line 667
    .local v5, domsid:Lmeizu_jcifs/smb/SID;
    const/4 v10, 0x0

    .line 668
    .local v10, handle:Lmeizu_jcifs/dcerpc/DcerpcHandle;
    const/4 v14, 0x0

    .line 669
    .local v14, policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    const/4 v3, 0x0

    .line 670
    .local v3, domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    new-instance v17, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;

    invoke-direct/range {v17 .. v17}, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;-><init>()V

    .line 673
    .local v17, sam:Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;
    sget-object v19, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v19

    .line 675
    :try_start_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ncacn_np:"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "[\\PIPE\\samr]"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu_jcifs/dcerpc/DcerpcHandle;

    move-result-object v10

    .line 677
    new-instance v15, Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;

    const/high16 v18, 0x200

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v15, v10, v0, v1}, Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Lmeizu_jcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 678
    .end local v14           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .local v15, policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    :try_start_1
    new-instance v4, Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;

    const/high16 v18, 0x200

    move/from16 v0, v18

    invoke-direct {v4, v10, v15, v0, v5}, Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Lmeizu_jcifs/dcerpc/DcerpcHandle;Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;ILmeizu_jcifs/dcerpc/rpc$sid_t;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 679
    .end local v3           #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .local v4, domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    :try_start_2
    new-instance v16, Lmeizu_jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;

    const v18, 0xffff

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Lmeizu_jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;-><init>(Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;ILmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;)V

    .line 680
    .local v16, rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu_jcifs/dcerpc/DcerpcMessage;)V

    .line 681
    move-object/from16 v0, v16

    iget v0, v0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 682
    new-instance v18, Lmeizu_jcifs/smb/SmbException;

    move-object/from16 v0, v16

    iget v0, v0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->retval:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lmeizu_jcifs/smb/SmbException;-><init>(IZ)V

    throw v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 712
    .end local v16           #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;
    :catchall_0
    move-exception v18

    move-object v3, v4

    .end local v4           #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .restart local v3       #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    move-object v14, v15

    .end local v15           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v14       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    :goto_0
    if-eqz v10, :cond_2

    .line 713
    if-eqz v14, :cond_1

    .line 714
    if-eqz v3, :cond_0

    .line 715
    :try_start_3
    invoke-virtual {v3}, Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 717
    :cond_0
    invoke-virtual {v14}, Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 719
    :cond_1
    invoke-virtual {v10}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->close()V

    :cond_2
    throw v18

    .line 722
    :catchall_1
    move-exception v18

    :goto_1
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v18

    .line 684
    .end local v3           #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .end local v14           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v4       #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .restart local v15       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v16       #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;
    :cond_3
    :try_start_4
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 686
    .local v11, map:Ljava/util/Map;
    const/4 v6, 0x0

    .local v6, ei:I
    :goto_2
    move-object/from16 v0, v16

    iget-object v0, v0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->count:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_7

    .line 687
    move-object/from16 v0, v16

    iget-object v0, v0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrEnumerateAliasesInDomain;->sam:Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamArray;->entries:[Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;

    move-object/from16 v18, v0

    aget-object v7, v18, v6

    .line 689
    .local v7, entry:Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;
    iget v0, v7, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v10, v4, v5, v0, v1}, Lmeizu_jcifs/smb/SID;->getGroupMemberSids0(Lmeizu_jcifs/dcerpc/DcerpcHandle;Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;Lmeizu_jcifs/smb/SID;II)[Lmeizu_jcifs/smb/SID;

    move-result-object v12

    .line 694
    .local v12, mems:[Lmeizu_jcifs/smb/SID;
    new-instance v8, Lmeizu_jcifs/smb/SID;

    iget v0, v7, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;->idx:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v8, v5, v0}, Lmeizu_jcifs/smb/SID;-><init>(Lmeizu_jcifs/smb/SID;I)V

    .line 695
    .local v8, groupSid:Lmeizu_jcifs/smb/SID;
    const/16 v18, 0x4

    move/from16 v0, v18

    iput v0, v8, Lmeizu_jcifs/smb/SID;->type:I

    .line 696
    invoke-virtual {v5}, Lmeizu_jcifs/smb/SID;->getDomainName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 697
    new-instance v18, Lmeizu_jcifs/dcerpc/UnicodeString;

    iget-object v0, v7, Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lmeizu_jcifs/dcerpc/UnicodeString;-><init>(Lmeizu_jcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual/range {v18 .. v18}, Lmeizu_jcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v8, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 699
    const/4 v13, 0x0

    .local v13, mi:I
    :goto_3
    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_6

    .line 700
    aget-object v18, v12, v13

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 701
    .local v9, groups:Ljava/util/ArrayList;
    if-nez v9, :cond_4

    .line 702
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #groups:Ljava/util/ArrayList;
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .restart local v9       #groups:Ljava/util/ArrayList;
    aget-object v18, v12, v13

    move-object/from16 v0, v18

    invoke-interface {v11, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_4
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 706
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 699
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 686
    .end local v9           #groups:Ljava/util/ArrayList;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 712
    .end local v7           #entry:Lmeizu_jcifs/dcerpc/msrpc/samr$SamrSamEntry;
    .end local v8           #groupSid:Lmeizu_jcifs/smb/SID;
    .end local v12           #mems:[Lmeizu_jcifs/smb/SID;
    .end local v13           #mi:I
    :cond_7
    if-eqz v10, :cond_a

    .line 713
    if-eqz v15, :cond_9

    .line 714
    if-eqz v4, :cond_8

    .line 715
    :try_start_5
    invoke-virtual {v4}, Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 717
    :cond_8
    invoke-virtual {v15}, Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 719
    :cond_9
    invoke-virtual {v10}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->close()V

    :cond_a
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    return-object v11

    .line 722
    :catchall_2
    move-exception v18

    move-object v3, v4

    .end local v4           #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .restart local v3       #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    move-object v14, v15

    .end local v15           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v14       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    goto/16 :goto_1

    .line 712
    .end local v6           #ei:I
    .end local v11           #map:Ljava/util/Map;
    .end local v16           #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcEnumerateAliasesInDomain;
    :catchall_3
    move-exception v18

    goto/16 :goto_0

    .end local v14           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v15       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    :catchall_4
    move-exception v18

    move-object v14, v15

    .end local v15           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v14       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    goto/16 :goto_0
.end method

.method public static getServerSid(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu_jcifs/smb/SID;
    .locals 12
    .parameter "server"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v6, 0x0

    .line 221
    .local v6, handle:Lmeizu_jcifs/dcerpc/DcerpcHandle;
    const/4 v8, 0x0

    .line 222
    .local v8, policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    new-instance v7, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;

    invoke-direct {v7}, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;-><init>()V

    .line 225
    .local v7, info:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;
    sget-object v11, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v11

    .line 227
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ncacn_np:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[\\PIPE\\lsarpc]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu_jcifs/dcerpc/DcerpcHandle;

    move-result-object v6

    .line 230
    new-instance v9, Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {v9, v6, v0, v1}, Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Lmeizu_jcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 231
    .end local v8           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .local v9, policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    :try_start_1
    new-instance v10, Lmeizu_jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;

    const/4 v0, 0x5

    invoke-direct {v10, v9, v0, v7}, Lmeizu_jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;-><init>(Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;SLmeizu_jcifs/dcerpc/ndr/NdrObject;)V

    .line 234
    .local v10, rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;
    invoke-virtual {v6, v10}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu_jcifs/dcerpc/DcerpcMessage;)V

    .line 235
    iget v0, v10, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    if-eqz v0, :cond_2

    .line 236
    new-instance v0, Lmeizu_jcifs/smb/SmbException;

    iget v1, v10, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarQueryInformationPolicy;->retval:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmeizu_jcifs/smb/SmbException;-><init>(IZ)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v10           #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;
    :catchall_0
    move-exception v0

    move-object v8, v9

    .end local v9           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .restart local v8       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    :goto_0
    if-eqz v6, :cond_1

    .line 245
    if-eqz v8, :cond_0

    .line 246
    :try_start_2
    invoke-virtual {v8}, Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    .line 248
    :cond_0
    invoke-virtual {v6}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->close()V

    :cond_1
    throw v0

    .line 251
    :catchall_1
    move-exception v0

    :goto_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 238
    .end local v8           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .restart local v9       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .restart local v10       #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;
    :cond_2
    :try_start_3
    new-instance v0, Lmeizu_jcifs/smb/SID;

    iget-object v1, v7, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->sid:Lmeizu_jcifs/dcerpc/rpc$sid_t;

    const/4 v2, 0x3

    new-instance v3, Lmeizu_jcifs/dcerpc/UnicodeString;

    iget-object v4, v7, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarDomainInfo;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lmeizu_jcifs/dcerpc/UnicodeString;-><init>(Lmeizu_jcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v3}, Lmeizu_jcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmeizu_jcifs/smb/SID;-><init>(Lmeizu_jcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    if-eqz v6, :cond_4

    .line 245
    if-eqz v9, :cond_3

    .line 246
    :try_start_4
    invoke-virtual {v9}, Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    .line 248
    :cond_3
    invoke-virtual {v6}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->close()V

    :cond_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v0

    .line 251
    :catchall_2
    move-exception v0

    move-object v8, v9

    .end local v9           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .restart local v8       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    goto :goto_1

    .line 244
    .end local v10           #rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcQueryInformationPolicy;
    :catchall_3
    move-exception v0

    goto :goto_0
.end method

.method public static resolveSids(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;[Lmeizu_jcifs/smb/SID;)V
    .locals 8
    .parameter "authorityServerName"
    .parameter "auth"
    .parameter "sids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .local v1, list:Ljava/util/ArrayList;
    sget-object v5, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v5

    .line 198
    const/4 v2, 0x0

    .local v2, si:I
    :goto_0
    :try_start_0
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 199
    sget-object v4, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object v6, p2, v2

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu_jcifs/smb/SID;

    .line 200
    .local v3, sid:Lmeizu_jcifs/smb/SID;
    if-eqz v3, :cond_0

    .line 201
    aget-object v4, p2, v2

    iget v6, v3, Lmeizu_jcifs/smb/SID;->type:I

    iput v6, v4, Lmeizu_jcifs/smb/SID;->type:I

    .line 202
    aget-object v4, p2, v2

    iget-object v6, v3, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v4, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 203
    aget-object v4, p2, v2

    iget-object v6, v3, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v6, v4, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 198
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_0
    aget-object v4, p2, v2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
    .end local v3           #sid:Lmeizu_jcifs/smb/SID;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 209
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 210
    const/4 v4, 0x0

    new-array v4, v4, [Lmeizu_jcifs/smb/SID;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmeizu_jcifs/smb/SID;

    move-object v0, v4

    check-cast v0, [Lmeizu_jcifs/smb/SID;

    move-object p2, v0

    .line 211
    invoke-static {p0, p1, p2}, Lmeizu_jcifs/smb/SID;->resolveSids0(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;[Lmeizu_jcifs/smb/SID;)V

    .line 212
    const/4 v2, 0x0

    :goto_2
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 213
    sget-object v4, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object v6, p2, v2

    aget-object v7, p2, v2

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 216
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    return-void
.end method

.method public static resolveSids(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;[Lmeizu_jcifs/smb/SID;II)V
    .locals 8
    .parameter "authorityServerName"
    .parameter "auth"
    .parameter "sids"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v1, list:Ljava/util/ArrayList;
    sget-object v5, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v5

    .line 159
    const/4 v2, 0x0

    .local v2, si:I
    :goto_0
    if-ge v2, p4, :cond_1

    .line 160
    :try_start_0
    sget-object v4, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    add-int v6, p3, v2

    aget-object v6, p2, v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu_jcifs/smb/SID;

    .line 161
    .local v3, sid:Lmeizu_jcifs/smb/SID;
    if-eqz v3, :cond_0

    .line 162
    add-int v4, p3, v2

    aget-object v4, p2, v4

    iget v6, v3, Lmeizu_jcifs/smb/SID;->type:I

    iput v6, v4, Lmeizu_jcifs/smb/SID;->type:I

    .line 163
    add-int v4, p3, v2

    aget-object v4, p2, v4

    iget-object v6, v3, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    iput-object v6, v4, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 164
    add-int v4, p3, v2

    aget-object v4, p2, v4

    iget-object v6, v3, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    iput-object v6, v4, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 159
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_0
    add-int v4, p3, v2

    aget-object v4, p2, v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 177
    .end local v3           #sid:Lmeizu_jcifs/smb/SID;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 170
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 171
    const/4 v4, 0x0

    new-array v4, v4, [Lmeizu_jcifs/smb/SID;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmeizu_jcifs/smb/SID;

    move-object v0, v4

    check-cast v0, [Lmeizu_jcifs/smb/SID;

    move-object p2, v0

    .line 172
    invoke-static {p0, p1, p2}, Lmeizu_jcifs/smb/SID;->resolveSids0(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;[Lmeizu_jcifs/smb/SID;)V

    .line 173
    const/4 v2, 0x0

    :goto_2
    array-length v4, p2

    if-ge v2, v4, :cond_2

    .line 174
    sget-object v4, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    aget-object v6, p2, v2

    aget-object v7, p2, v2

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 177
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    return-void
.end method

.method static resolveSids(Lmeizu_jcifs/dcerpc/DcerpcHandle;Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;[Lmeizu_jcifs/smb/SID;)V
    .locals 9
    .parameter "handle"
    .parameter "policyHandle"
    .parameter "sids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 91
    new-instance v0, Lmeizu_jcifs/dcerpc/msrpc/MsrpcLookupSids;

    invoke-direct {v0, p1, p2}, Lmeizu_jcifs/dcerpc/msrpc/MsrpcLookupSids;-><init>(Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;[Lmeizu_jcifs/smb/SID;)V

    .line 92
    .local v0, rpc:Lmeizu_jcifs/dcerpc/msrpc/MsrpcLookupSids;
    invoke-virtual {p0, v0}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->sendrecv(Lmeizu_jcifs/dcerpc/DcerpcMessage;)V

    .line 93
    iget v4, v0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    sparse-switch v4, :sswitch_data_0

    .line 99
    new-instance v4, Lmeizu_jcifs/smb/SmbException;

    iget v5, v0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->retval:I

    invoke-direct {v4, v5, v7}, Lmeizu_jcifs/smb/SmbException;-><init>(IZ)V

    throw v4

    .line 102
    :sswitch_0
    const/4 v1, 0x0

    .local v1, si:I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_0

    .line 103
    aget-object v4, p2, v1

    iget-object v5, v0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v5, v5, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v5, v5, v1

    iget-short v5, v5, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_type:S

    iput v5, v4, Lmeizu_jcifs/smb/SID;->type:I

    .line 104
    aget-object v4, p2, v1

    iput-object v8, v4, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 106
    aget-object v4, p2, v1

    iget v4, v4, Lmeizu_jcifs/smb/SID;->type:I

    packed-switch v4, :pswitch_data_0

    .line 118
    :goto_1
    aget-object v4, p2, v1

    new-instance v5, Lmeizu_jcifs/dcerpc/UnicodeString;

    iget-object v6, v0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v6, v6, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v6, v6, v1

    iget-object v6, v6, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    invoke-direct {v5, v6, v7}, Lmeizu_jcifs/dcerpc/UnicodeString;-><init>(Lmeizu_jcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v5}, Lmeizu_jcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    .line 119
    aget-object v4, p2, v1

    iput-object v8, v4, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 120
    aget-object v4, p2, v1

    iput-object v8, v4, Lmeizu_jcifs/smb/SID;->origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :pswitch_0
    iget-object v4, v0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->names:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTransNameArray;->names:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;

    aget-object v4, v4, v1

    iget v2, v4, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTranslatedName;->sid_index:I

    .line 113
    .local v2, sid_index:I
    iget-object v4, v0, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarLookupSids;->domains:Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;

    iget-object v4, v4, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarRefDomainList;->domains:[Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;

    aget-object v4, v4, v2

    iget-object v3, v4, Lmeizu_jcifs/dcerpc/msrpc/lsarpc$LsarTrustInformation;->name:Lmeizu_jcifs/dcerpc/rpc$unicode_string;

    .line 114
    .local v3, ustr:Lmeizu_jcifs/dcerpc/rpc$unicode_string;
    aget-object v4, p2, v1

    new-instance v5, Lmeizu_jcifs/dcerpc/UnicodeString;

    invoke-direct {v5, v3, v7}, Lmeizu_jcifs/dcerpc/UnicodeString;-><init>(Lmeizu_jcifs/dcerpc/rpc$unicode_string;Z)V

    invoke-virtual {v5}, Lmeizu_jcifs/dcerpc/UnicodeString;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    goto :goto_1

    .line 122
    .end local v2           #sid_index:I
    .end local v3           #ustr:Lmeizu_jcifs/dcerpc/rpc$unicode_string;
    :cond_0
    return-void

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fffff8d -> :sswitch_0
        0x0 -> :sswitch_0
        0x107 -> :sswitch_0
    .end sparse-switch

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static resolveSids0(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;[Lmeizu_jcifs/smb/SID;)V
    .locals 8
    .parameter "authorityServerName"
    .parameter "auth"
    .parameter "sids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 127
    .local v1, handle:Lmeizu_jcifs/dcerpc/DcerpcHandle;
    const/4 v2, 0x0

    .line 129
    .local v2, policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    sget-object v6, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v6

    .line 131
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ncacn_np:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "[\\PIPE\\lsarpc]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu_jcifs/dcerpc/DcerpcHandle;

    move-result-object v1

    .line 133
    move-object v4, p0

    .line 134
    .local v4, server:Ljava/lang/String;
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 135
    .local v0, dot:I
    if-lez v0, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 137
    :cond_0
    new-instance v3, Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\\\"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x800

    invoke-direct {v3, v1, v5, v7}, Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;-><init>(Lmeizu_jcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v2           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .local v3, policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    :try_start_1
    invoke-static {v1, v3, p2}, Lmeizu_jcifs/smb/SID;->resolveSids(Lmeizu_jcifs/dcerpc/DcerpcHandle;Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;[Lmeizu_jcifs/smb/SID;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 140
    if-eqz v1, :cond_2

    .line 141
    if-eqz v3, :cond_1

    .line 142
    :try_start_2
    invoke-virtual {v3}, Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    .line 144
    :cond_1
    invoke-virtual {v1}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->close()V

    .line 147
    :cond_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    return-void

    .line 140
    .end local v0           #dot:I
    .end local v3           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .end local v4           #server:Ljava/lang/String;
    .restart local v2       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    :catchall_0
    move-exception v5

    :goto_0
    if-eqz v1, :cond_4

    .line 141
    if-eqz v2, :cond_3

    .line 142
    :try_start_3
    invoke-virtual {v2}, Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;->close()V

    .line 144
    :cond_3
    invoke-virtual {v1}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->close()V

    :cond_4
    throw v5

    .line 147
    :catchall_1
    move-exception v5

    :goto_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .end local v2           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .restart local v0       #dot:I
    .restart local v3       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .restart local v4       #server:Ljava/lang/String;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .restart local v2       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    goto :goto_1

    .line 140
    .end local v2           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .restart local v3       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    :catchall_3
    move-exception v5

    move-object v2, v3

    .end local v3           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    .restart local v2       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/LsaPolicyHandle;
    goto :goto_0
.end method

.method public static toByteArray(Lmeizu_jcifs/dcerpc/rpc$sid_t;)[B
    .locals 7
    .parameter "sid"

    .prologue
    .line 254
    iget-byte v4, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x8

    new-array v2, v4, [B

    .line 255
    .local v2, dst:[B
    const/4 v0, 0x0

    .line 256
    .local v0, di:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #di:I
    .local v1, di:I
    iget-byte v4, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    aput-byte v4, v2, v0

    .line 257
    add-int/lit8 v0, v1, 0x1

    .end local v1           #di:I
    .restart local v0       #di:I
    iget-byte v4, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    aput-byte v4, v2, v1

    .line 258
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {v4, v5, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    add-int/lit8 v0, v0, 0x6

    .line 260
    const/4 v3, 0x0

    .local v3, ii:I
    :goto_0
    iget-byte v4, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v3, v4, :cond_0

    .line 261
    iget-object v4, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v4, v4, v3

    invoke-static {v4, v2, v0}, Lmeizu_jcifs/util/Encdec;->enc_uint32le(I[BI)I

    .line 262
    add-int/lit8 v0, v0, 0x4

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    :cond_0
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 446
    instance-of v5, p1, Lmeizu_jcifs/smb/SID;

    if-eqz v5, :cond_0

    move-object v2, p1

    .line 447
    check-cast v2, Lmeizu_jcifs/smb/SID;

    .line 448
    .local v2, sid:Lmeizu_jcifs/smb/SID;
    if-ne v2, p0, :cond_1

    move v4, v3

    .line 466
    .end local v2           #sid:Lmeizu_jcifs/smb/SID;
    :cond_0
    :goto_0
    return v4

    .line 450
    .restart local v2       #sid:Lmeizu_jcifs/smb/SID;
    :cond_1
    iget-byte v5, v2, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    iget-byte v6, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ne v5, v6, :cond_0

    .line 451
    iget-byte v0, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    .local v0, i:I
    move v1, v0

    .line 452
    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_2

    .line 453
    iget-object v5, v2, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v5, v5, v0

    iget-object v6, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v6, v6, v0

    if-ne v5, v6, :cond_0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 457
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/4 v5, 0x6

    if-ge v0, v5, :cond_3

    .line 458
    iget-object v5, v2, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v5, v5, v0

    iget-object v6, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v6, v6, v0

    if-ne v5, v6, :cond_0

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 463
    :cond_3
    iget-byte v5, v2, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    iget-byte v6, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    if-ne v5, v6, :cond_4

    :goto_3
    move v4, v3

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_3
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->resolveWeak()V

    .line 431
    :cond_0
    iget v0, p0, Lmeizu_jcifs/smb/SID;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-byte v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    .line 433
    :cond_1
    iget v0, p0, Lmeizu_jcifs/smb/SID;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 434
    const-string v0, ""

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, p0, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 414
    iget-object v1, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->resolveWeak()V

    .line 416
    :cond_0
    iget v1, p0, Lmeizu_jcifs/smb/SID;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 417
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, full:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->getAccountName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 420
    .end local v0           #full:Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDomainSid()Lmeizu_jcifs/smb/SID;
    .locals 6

    .prologue
    const/4 v2, 0x3

    .line 362
    new-instance v0, Lmeizu_jcifs/smb/SID;

    iget-object v3, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->getType()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmeizu_jcifs/smb/SID;-><init>(Lmeizu_jcifs/dcerpc/rpc$sid_t;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getGroupMemberSids(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;I)[Lmeizu_jcifs/smb/SID;
    .locals 9
    .parameter "authorityServerName"
    .parameter "auth"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    iget v6, p0, Lmeizu_jcifs/smb/SID;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget v6, p0, Lmeizu_jcifs/smb/SID;->type:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    .line 609
    const/4 v6, 0x0

    new-array v6, v6, [Lmeizu_jcifs/smb/SID;

    .line 635
    :goto_0
    return-object v6

    .line 611
    :cond_0
    const/4 v3, 0x0

    .line 612
    .local v3, handle:Lmeizu_jcifs/dcerpc/DcerpcHandle;
    const/4 v4, 0x0

    .line 613
    .local v4, policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    const/4 v0, 0x0

    .line 614
    .local v0, domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->getDomainSid()Lmeizu_jcifs/smb/SID;

    move-result-object v2

    .line 616
    .local v2, domsid:Lmeizu_jcifs/smb/SID;
    sget-object v7, Lmeizu_jcifs/smb/SID;->sid_cache:Ljava/util/Map;

    monitor-enter v7

    .line 618
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ncacn_np:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "[\\PIPE\\samr]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p2}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->getHandle(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)Lmeizu_jcifs/dcerpc/DcerpcHandle;

    move-result-object v3

    .line 620
    new-instance v5, Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;

    const/16 v6, 0x30

    invoke-direct {v5, v3, p1, v6}, Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;-><init>(Lmeizu_jcifs/dcerpc/DcerpcHandle;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 621
    .end local v4           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .local v5, policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    :try_start_1
    new-instance v1, Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;

    const/16 v6, 0x200

    invoke-direct {v1, v3, v5, v6, v2}, Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;-><init>(Lmeizu_jcifs/dcerpc/DcerpcHandle;Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;ILmeizu_jcifs/dcerpc/rpc$sid_t;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 622
    .end local v0           #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .local v1, domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    :try_start_2
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->getRid()I

    move-result v6

    invoke-static {v3, v1, v2, v6, p3}, Lmeizu_jcifs/smb/SID;->getGroupMemberSids0(Lmeizu_jcifs/dcerpc/DcerpcHandle;Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;Lmeizu_jcifs/smb/SID;II)[Lmeizu_jcifs/smb/SID;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v6

    .line 628
    if-eqz v3, :cond_3

    .line 629
    if-eqz v5, :cond_2

    .line 630
    if-eqz v1, :cond_1

    .line 631
    :try_start_3
    invoke-virtual {v1}, Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 633
    :cond_1
    invoke-virtual {v5}, Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 635
    :cond_2
    invoke-virtual {v3}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->close()V

    :cond_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 638
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1           #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .restart local v0       #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    move-object v4, v5

    .end local v5           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v4       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    :goto_1
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v6

    .line 628
    :catchall_1
    move-exception v6

    :goto_2
    if-eqz v3, :cond_6

    .line 629
    if-eqz v4, :cond_5

    .line 630
    if-eqz v0, :cond_4

    .line 631
    :try_start_5
    invoke-virtual {v0}, Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;->close()V

    .line 633
    :cond_4
    invoke-virtual {v4}, Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;->close()V

    .line 635
    :cond_5
    invoke-virtual {v3}, Lmeizu_jcifs/dcerpc/DcerpcHandle;->close()V

    :cond_6
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 638
    :catchall_2
    move-exception v6

    goto :goto_1

    .line 628
    .end local v4           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v5       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    :catchall_3
    move-exception v6

    move-object v4, v5

    .end local v5           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v4       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    goto :goto_2

    .end local v0           #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .end local v4           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v1       #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .restart local v5       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    :catchall_4
    move-exception v6

    move-object v0, v1

    .end local v1           #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    .restart local v0       #domainHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrDomainHandle;
    move-object v4, v5

    .end local v5           #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    .restart local v4       #policyHandle:Lmeizu_jcifs/dcerpc/msrpc/SamrPolicyHandle;
    goto :goto_2
.end method

.method public getRid()I
    .locals 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This SID is a domain sid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_0
    iget-object v0, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    iget-byte v1, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->resolveWeak()V

    .line 396
    :cond_0
    iget v0, p0, Lmeizu_jcifs/smb/SID;->type:I

    return v0
.end method

.method public getTypeText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->resolveWeak()V

    .line 406
    :cond_0
    sget-object v0, Lmeizu_jcifs/smb/SID;->SID_TYPE_NAMES:[Ljava/lang/String;

    iget v1, p0, Lmeizu_jcifs/smb/SID;->type:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 439
    iget-object v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v3, 0x5

    aget-byte v0, v2, v3

    .line 440
    .local v0, hcode:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-byte v2, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v1, v2, :cond_0

    .line 441
    const v2, 0x1003f

    iget-object v3, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v3, v3, v1

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    :cond_0
    return v0
.end method

.method public resolve(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)V
    .locals 2
    .parameter "authorityServerName"
    .parameter "auth"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    const/4 v1, 0x1

    new-array v0, v1, [Lmeizu_jcifs/smb/SID;

    .line 548
    .local v0, sids:[Lmeizu_jcifs/smb/SID;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 549
    invoke-static {p1, p2, v0}, Lmeizu_jcifs/smb/SID;->resolveSids(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;[Lmeizu_jcifs/smb/SID;)V

    .line 550
    return-void
.end method

.method resolveWeak()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 553
    iget-object v0, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 555
    :try_start_0
    iget-object v0, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    iget-object v1, p0, Lmeizu_jcifs/smb/SID;->origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    invoke-virtual {p0, v0, v1}, Lmeizu_jcifs/smb/SID;->resolve(Ljava/lang/String;Lmeizu_jcifs/smb/NtlmPasswordAuthentication;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    iput-object v2, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 559
    iput-object v2, p0, Lmeizu_jcifs/smb/SID;->origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 558
    iput-object v2, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 559
    iput-object v2, p0, Lmeizu_jcifs/smb/SID;->origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    goto :goto_0

    .line 558
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    .line 559
    iput-object v2, p0, Lmeizu_jcifs/smb/SID;->origin_auth:Lmeizu_jcifs/smb/NtlmPasswordAuthentication;

    throw v0
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 512
    iget-object v1, p0, Lmeizu_jcifs/smb/SID;->origin_server:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->resolveWeak()V

    .line 514
    :cond_0
    iget-object v1, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 517
    iget v1, p0, Lmeizu_jcifs/smb/SID;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 518
    iget-object v0, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    .line 532
    :goto_0
    return-object v0

    .line 519
    :cond_1
    iget v1, p0, Lmeizu_jcifs/smb/SID;->type:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    const-string v2, "BUILTIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 521
    :cond_2
    iget v1, p0, Lmeizu_jcifs/smb/SID;->type:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 522
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, str:Ljava/lang/String;
    goto :goto_0

    .line 524
    .end local v0           #str:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v0           #str:Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmeizu_jcifs/smb/SID;->domainName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmeizu_jcifs/smb/SID;->acctName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 532
    .end local v0           #str:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lmeizu_jcifs/smb/SID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 474
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "S-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->revision:B

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, ret:Ljava/lang/String;
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v6, v6, v9

    if-nez v6, :cond_0

    iget-object v6, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v6, v6, v10

    if-eqz v6, :cond_1

    .line 477
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    const/4 v8, 0x6

    invoke-static {v7, v9, v8}, Lmeizu_jcifs/util/Hexdump;->toHexString([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-byte v6, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority_count:B

    if-ge v0, v6, :cond_3

    .line 490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->sub_authority:[I

    aget v7, v7, v0

    int-to-long v7, v7

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 480
    .end local v0           #i:I
    :cond_1
    const-wide/16 v4, 0x0

    .line 481
    .local v4, shift:J
    const-wide/16 v1, 0x0

    .line 482
    .local v1, id:J
    const/4 v0, 0x5

    .restart local v0       #i:I
    :goto_2
    if-le v0, v10, :cond_2

    .line 483
    iget-object v6, p0, Lmeizu_jcifs/dcerpc/rpc$sid_t;->identifier_authority:[B

    aget-byte v6, v6, v0

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v8, v4

    shl-long/2addr v6, v8

    add-long/2addr v1, v6

    .line 484
    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    .line 482
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 486
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 492
    .end local v1           #id:J
    .end local v4           #shift:J
    :cond_3
    return-object v3
.end method
