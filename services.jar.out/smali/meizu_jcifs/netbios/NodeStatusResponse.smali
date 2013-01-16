.class Lmeizu_jcifs/netbios/NodeStatusResponse;
.super Lmeizu_jcifs/netbios/NameServicePacket;
.source "NodeStatusResponse.java"


# instance fields
.field addressArray:[Lmeizu_jcifs/netbios/NbtAddress;

.field private macAddress:[B

.field private numberOfNames:I

.field private queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

.field private stats:[B


# direct methods
.method constructor <init>(Lmeizu_jcifs/netbios/NbtAddress;)V
    .locals 1
    .parameter "queryAddress"

    .prologue
    .line 41
    invoke-direct {p0}, Lmeizu_jcifs/netbios/NameServicePacket;-><init>()V

    .line 42
    iput-object p1, p0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    .line 43
    new-instance v0, Lmeizu_jcifs/netbios/Name;

    invoke-direct {v0}, Lmeizu_jcifs/netbios/Name;-><init>()V

    iput-object v0, p0, Lmeizu_jcifs/netbios/NameServicePacket;->recordName:Lmeizu_jcifs/netbios/Name;

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lmeizu_jcifs/netbios/NodeStatusResponse;->macAddress:[B

    .line 45
    return-void
.end method

.method private readNodeNameArray([BI)I
    .locals 21
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 71
    move/from16 v19, p2

    .line 73
    .local v19, start:I
    move-object/from16 v0, p0

    iget v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->numberOfNames:I

    new-array v3, v3, [Lmeizu_jcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iput-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->addressArray:[Lmeizu_jcifs/netbios/NbtAddress;

    .line 77
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iget-object v3, v3, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v0, v3, Lmeizu_jcifs/netbios/Name;->scope:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 85
    .local v18, scope:Ljava/lang/String;
    const/4 v13, 0x0

    .line 88
    .local v13, addrFound:Z
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->numberOfNames:I

    if-ge v15, v3, :cond_9

    .line 89
    add-int/lit8 v16, p2, 0xe

    .local v16, j:I
    :goto_1
    aget-byte v3, p1, v16

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    add-int/lit8 v16, v16, -0x1

    goto :goto_1

    .line 91
    :cond_0
    new-instance v17, Ljava/lang/String;

    sub-int v3, v16, p2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lmeizu_jcifs/netbios/Name;->OEM_ENCODING:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 92
    .local v17, n:Ljava/lang/String;
    add-int/lit8 v3, p2, 0xf

    aget-byte v3, p1, v3

    and-int/lit16 v14, v3, 0xff

    .line 93
    .local v14, hexCode:I
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_3

    const/4 v6, 0x1

    .line 94
    .local v6, groupName:Z
    :goto_2
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x60

    shr-int/lit8 v7, v3, 0x5

    .line 95
    .local v7, ownerNodeType:I
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    const/4 v8, 0x1

    .line 96
    .local v8, isBeingDeleted:Z
    :goto_3
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_5

    const/4 v9, 0x1

    .line 97
    .local v9, isInConflict:Z
    :goto_4
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_6

    const/4 v10, 0x1

    .line 98
    .local v10, isActive:Z
    :goto_5
    add-int/lit8 v3, p2, 0x10

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    const/4 v11, 0x1

    .line 106
    .local v11, isPermanent:Z
    :goto_6
    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iget-object v3, v3, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget v3, v3, Lmeizu_jcifs/netbios/Name;->hexCode:I

    if-ne v3, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iget-object v3, v3, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    sget-object v4, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_NAME:Lmeizu_jcifs/netbios/Name;

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iget-object v3, v3, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    iget-object v3, v3, Lmeizu_jcifs/netbios/Name;->name:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 110
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iget-object v3, v3, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    sget-object v4, Lmeizu_jcifs/netbios/NbtAddress;->UNKNOWN_NAME:Lmeizu_jcifs/netbios/Name;

    if-ne v3, v4, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    new-instance v4, Lmeizu_jcifs/netbios/Name;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v14, v1}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v4, v3, Lmeizu_jcifs/netbios/NbtAddress;->hostName:Lmeizu_jcifs/netbios/Name;

    .line 113
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iput-boolean v6, v3, Lmeizu_jcifs/netbios/NbtAddress;->groupName:Z

    .line 114
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iput v7, v3, Lmeizu_jcifs/netbios/NbtAddress;->nodeType:I

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iput-boolean v8, v3, Lmeizu_jcifs/netbios/NbtAddress;->isBeingDeleted:Z

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iput-boolean v9, v3, Lmeizu_jcifs/netbios/NbtAddress;->isInConflict:Z

    .line 117
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iput-boolean v10, v3, Lmeizu_jcifs/netbios/NbtAddress;->isActive:Z

    .line 118
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iput-boolean v11, v3, Lmeizu_jcifs/netbios/NbtAddress;->isPermanent:Z

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->macAddress:[B

    iput-object v4, v3, Lmeizu_jcifs/netbios/NbtAddress;->macAddress:[B

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lmeizu_jcifs/netbios/NbtAddress;->isDataFromNodeStatus:Z

    .line 121
    const/4 v13, 0x1

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->addressArray:[Lmeizu_jcifs/netbios/NbtAddress;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    aput-object v4, v3, v15

    .line 88
    :goto_7
    add-int/lit8 p2, p2, 0x12

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 93
    .end local v6           #groupName:Z
    .end local v7           #ownerNodeType:I
    .end local v8           #isBeingDeleted:Z
    .end local v9           #isInConflict:Z
    .end local v10           #isActive:Z
    .end local v11           #isPermanent:Z
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 95
    .restart local v6       #groupName:Z
    .restart local v7       #ownerNodeType:I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 96
    .restart local v8       #isBeingDeleted:Z
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 97
    .restart local v9       #isInConflict:Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 98
    .restart local v10       #isActive:Z
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 124
    .restart local v11       #isPermanent:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->addressArray:[Lmeizu_jcifs/netbios/NbtAddress;

    move-object/from16 v20, v0

    new-instance v3, Lmeizu_jcifs/netbios/NbtAddress;

    new-instance v4, Lmeizu_jcifs/netbios/Name;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v14, v1}, Lmeizu_jcifs/netbios/Name;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->queryAddress:Lmeizu_jcifs/netbios/NbtAddress;

    iget v5, v5, Lmeizu_jcifs/netbios/NbtAddress;->address:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lmeizu_jcifs/netbios/NodeStatusResponse;->macAddress:[B

    invoke-direct/range {v3 .. v12}, Lmeizu_jcifs/netbios/NbtAddress;-><init>(Lmeizu_jcifs/netbios/Name;IZIZZZZ[B)V

    aput-object v3, v20, v15
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 135
    .end local v6           #groupName:Z
    .end local v7           #ownerNodeType:I
    .end local v8           #isBeingDeleted:Z
    .end local v9           #isInConflict:Z
    .end local v10           #isActive:Z
    .end local v11           #isPermanent:Z
    .end local v14           #hexCode:I
    .end local v16           #j:I
    .end local v17           #n:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 137
    :cond_9
    sub-int v3, p2, v19

    return v3
.end method


# virtual methods
.method readBodyWireFormat([BI)I
    .locals 1
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lmeizu_jcifs/netbios/NodeStatusResponse;->readResourceRecordWireFormat([BI)I

    move-result v0

    return v0
.end method

.method readRDataWireFormat([BI)I
    .locals 8
    .parameter "src"
    .parameter "srcIndex"

    .prologue
    const/4 v7, 0x0

    .line 57
    move v2, p2

    .line 58
    .local v2, start:I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lmeizu_jcifs/netbios/NodeStatusResponse;->numberOfNames:I

    .line 59
    iget v4, p0, Lmeizu_jcifs/netbios/NodeStatusResponse;->numberOfNames:I

    mul-int/lit8 v0, v4, 0x12

    .line 60
    .local v0, namesLength:I
    iget v4, p0, Lmeizu_jcifs/netbios/NameServicePacket;->rDataLength:I

    sub-int/2addr v4, v0

    add-int/lit8 v3, v4, -0x1

    .line 61
    .local v3, statsLength:I
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, srcIndex:I
    aget-byte v4, p1, p2

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lmeizu_jcifs/netbios/NodeStatusResponse;->numberOfNames:I

    .line 63
    add-int v4, v1, v0

    iget-object v5, p0, Lmeizu_jcifs/netbios/NodeStatusResponse;->macAddress:[B

    const/4 v6, 0x6

    invoke-static {p1, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    invoke-direct {p0, p1, v1}, Lmeizu_jcifs/netbios/NodeStatusResponse;->readNodeNameArray([BI)I

    move-result v4

    add-int p2, v1, v4

    .line 65
    .end local v1           #srcIndex:I
    .restart local p2
    new-array v4, v3, [B

    iput-object v4, p0, Lmeizu_jcifs/netbios/NodeStatusResponse;->stats:[B

    .line 66
    iget-object v4, p0, Lmeizu_jcifs/netbios/NodeStatusResponse;->stats:[B

    invoke-static {p1, p2, v4, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    add-int/2addr p2, v3

    .line 68
    sub-int v4, p2, v2

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NodeStatusResponse["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lmeizu_jcifs/netbios/NameServicePacket;->toString()Ljava/lang/String;

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

.method writeBodyWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method writeRDataWireFormat([BI)I
    .locals 1
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
