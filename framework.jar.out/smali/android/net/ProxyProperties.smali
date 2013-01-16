.class public Landroid/net/ProxyProperties;
.super Ljava/lang/Object;
.source "ProxyProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ProxyProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExclusionList:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mParsedExclusionList:[Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mUseAuthentication:Z

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Landroid/net/ProxyProperties$1;

    invoke-direct {v0}, Landroid/net/ProxyProperties$1;-><init>()V

    sput-object v0, Landroid/net/ProxyProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/ProxyProperties;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v0

    iput v0, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 90
    invoke-virtual {p1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    .line 91
    iget-object v0, p1, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    .line 93
    iget-boolean v0, p1, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    iput-boolean v0, p0, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    .line 94
    iget-object v0, p1, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    .line 95
    iget-object v0, p1, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    .line 97
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "exclList"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 47
    iput p2, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 48
    invoke-direct {p0, p3}, Landroid/net/ProxyProperties;->setExclusionList(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "exclList"
    .parameter "useAuth"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 78
    iput p2, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 79
    invoke-direct {p0, p3}, Landroid/net/ProxyProperties;->setExclusionList(Ljava/lang/String;)V

    .line 80
    iput-boolean p4, p0, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    .line 81
    iput-object p5, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    .line 82
    iput-object p6, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "port"
    .parameter "exclList"
    .parameter "parsedExclList"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 56
    iput p2, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 57
    iput-object p3, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "exclList"
    .parameter "parsedExclList"
    .parameter "useAuth"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    .line 68
    iput p2, p0, Landroid/net/ProxyProperties;->mPort:I

    .line 69
    invoke-direct {p0, p3}, Landroid/net/ProxyProperties;->setExclusionList(Ljava/lang/String;)V

    .line 70
    iput-object p4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    .line 71
    iput-boolean p5, p0, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    .line 72
    iput-object p6, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    .line 74
    return-void
.end method

.method private setExclusionList(Ljava/lang/String;)V
    .locals 7
    .parameter "exclusionList"

    .prologue
    .line 141
    iput-object p1, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    .line 142
    iget-object v3, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 143
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    .line 154
    :cond_0
    return-void

    .line 145
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, splitExclusionList:[Ljava/lang/String;
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 148
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, s:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    :cond_2
    iget-object v3, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    aput-object v1, v3, v4

    .line 151
    iget-object v3, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 211
    instance-of v2, p1, Landroid/net/ProxyProperties;

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 212
    check-cast v0, Landroid/net/ProxyProperties;

    .line 213
    .local v0, p:Landroid/net/ProxyProperties;
    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    :cond_2
    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    :cond_3
    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 218
    :cond_4
    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, v0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 219
    :cond_5
    iget v2, p0, Landroid/net/ProxyProperties;->mPort:I

    iget v3, v0, Landroid/net/ProxyProperties;->mPort:I

    if-ne v2, v3, :cond_0

    .line 221
    iget-boolean v2, p0, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    iget-boolean v3, v0, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    if-ne v2, v3, :cond_0

    .line 223
    iget-object v2, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 224
    :cond_6
    iget-object v2, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, v0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 226
    :cond_7
    iget-object v2, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 227
    :cond_8
    iget-object v2, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, v0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 229
    :cond_9
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getExclusionList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Landroid/net/ProxyProperties;->mPort:I

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 4

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, inetSocketAddress:Ljava/net/InetSocketAddress;
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    iget v3, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #inetSocketAddress:Ljava/net/InetSocketAddress;
    .local v1, inetSocketAddress:Ljava/net/InetSocketAddress;
    move-object v0, v1

    .line 104
    .end local v1           #inetSocketAddress:Ljava/net/InetSocketAddress;
    .restart local v0       #inetSocketAddress:Ljava/net/InetSocketAddress;
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 245
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget v2, p0, Landroid/net/ProxyProperties;->mPort:I

    add-int/2addr v2, v0

    iget-boolean v0, p0, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v2, v0

    iget-object v0, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public isExcluded(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v3

    .line 160
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, urlDomain:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 164
    iget-object v4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 166
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 163
    :cond_3
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public isUseAuthentication()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-object v1, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public makeProxy()Ljava/net/Proxy;
    .locals 5

    .prologue
    .line 173
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 174
    .local v1, proxy:Ljava/net/Proxy;
    iget-object v3, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 176
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    iget v4, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 177
    .local v0, inetSocketAddress:Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v3, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #proxy:Ljava/net/Proxy;
    .local v2, proxy:Ljava/net/Proxy;
    move-object v1, v2

    .line 181
    .end local v0           #inetSocketAddress:Ljava/net/InetSocketAddress;
    .end local v2           #proxy:Ljava/net/Proxy;
    .restart local v1       #proxy:Ljava/net/Proxy;
    :cond_0
    :goto_0
    return-object v1

    .line 178
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 188
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget v1, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 193
    const-string v1, " xl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUseAuthentication == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, " U["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, " P["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
    :cond_1
    const-string v1, "[ProxyProperties.mHost == null]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 260
    iget-object v2, p0, Landroid/net/ProxyProperties;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    iget v2, p0, Landroid/net/ProxyProperties;->mPort:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    :goto_0
    iget-object v2, p0, Landroid/net/ProxyProperties;->mExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Landroid/net/ProxyProperties;->mParsedExclusionList:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 268
    iget-boolean v2, p0, Landroid/net/ProxyProperties;->mUseAuthentication:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 269
    iget-object v0, p0, Landroid/net/ProxyProperties;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Landroid/net/ProxyProperties;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    return-void

    .line 263
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 268
    goto :goto_1
.end method
