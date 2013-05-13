.class public Lcom/meizu/net/VpnProfile;
.super Ljava/lang/Object;
.source "VpnProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field public static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field public static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field public static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field public static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field public static final TYPE_MAX:I = 0x5

.field public static final TYPE_PPTP:I


# instance fields
.field public dnsServers:Ljava/lang/String;

.field public ipsecCaCert:Ljava/lang/String;

.field public ipsecIdentifier:Ljava/lang/String;

.field public ipsecSecret:Ljava/lang/String;

.field public ipsecServerCert:Ljava/lang/String;

.field public ipsecUserCert:Ljava/lang/String;

.field public final key:Ljava/lang/String;

.field public l2tpSecret:Ljava/lang/String;

.field public mppe:Z

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public routes:Ljava/lang/String;

.field public searchDomains:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public type:I

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->name:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/net/VpnProfile;->type:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->server:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->username:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->password:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->routes:Ljava/lang/String;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/net/VpnProfile;->mppe:Z

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/meizu/net/VpnProfile;->key:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static decode(Ljava/lang/String;[B)Lcom/meizu/net/VpnProfile;
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v7, 0x5

    const/16 v6, 0xe

    const/4 v2, 0x0

    .line 67
    if-nez p0, :cond_0

    move-object v0, v2

    .line 103
    :goto_0
    return-object v0

    .line 71
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v4, "\u0000"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, values:[Ljava/lang/String;
    array-length v3, v1

    if-lt v3, v6, :cond_1

    array-length v3, v1

    const/16 v4, 0xf

    if-le v3, v4, :cond_2

    :cond_1
    move-object v0, v2

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    new-instance v0, Lcom/meizu/net/VpnProfile;

    invoke-direct {v0, p0}, Lcom/meizu/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, profile:Lcom/meizu/net/VpnProfile;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->name:Ljava/lang/String;

    .line 79
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/meizu/net/VpnProfile;->type:I

    .line 80
    iget v3, v0, Lcom/meizu/net/VpnProfile;->type:I

    if-ltz v3, :cond_3

    iget v3, v0, Lcom/meizu/net/VpnProfile;->type:I

    if-le v3, v7, :cond_4

    :cond_3
    move-object v0, v2

    .line 81
    goto :goto_0

    .line 83
    :cond_4
    const/4 v3, 0x2

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->server:Ljava/lang/String;

    .line 84
    const/4 v3, 0x3

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->username:Ljava/lang/String;

    .line 85
    const/4 v3, 0x4

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->password:Ljava/lang/String;

    .line 86
    const/4 v3, 0x5

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 87
    const/4 v3, 0x6

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 88
    const/4 v3, 0x7

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->routes:Ljava/lang/String;

    .line 89
    const/16 v3, 0x8

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v0, Lcom/meizu/net/VpnProfile;->mppe:Z

    .line 90
    const/16 v3, 0x9

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 91
    const/16 v3, 0xa

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 92
    const/16 v3, 0xb

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 93
    const/16 v3, 0xc

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 94
    const/16 v3, 0xd

    aget-object v3, v1, v3

    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 95
    array-length v3, v1

    if-le v3, v6, :cond_5

    const/16 v3, 0xe

    aget-object v3, v1, v3

    :goto_1
    iput-object v3, v0, Lcom/meizu/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto/16 :goto_0

    .line 100
    .end local v0           #profile:Lcom/meizu/net/VpnProfile;
    .end local v1           #values:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v2

    .line 103
    goto/16 :goto_0

    .line 95
    .restart local v0       #profile:Lcom/meizu/net/VpnProfile;
    .restart local v1       #values:[Ljava/lang/String;
    :cond_5
    const-string v3, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public encode()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/net/VpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/net/VpnProfile;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/net/VpnProfile;->mppe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method
