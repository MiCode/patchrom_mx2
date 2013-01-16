.class public Lmeizu_jcifs/smb/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# static fields
.field static final SMB_HANDLER:Ljava/net/URLStreamHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lmeizu_jcifs/smb/Handler;

    invoke-direct {v0}, Lmeizu_jcifs/smb/Handler;-><init>()V

    sput-object v0, Lmeizu_jcifs/smb/Handler;->SMB_HANDLER:Ljava/net/URLStreamHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x1bd

    return v0
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .parameter "u"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lmeizu_jcifs/smb/SmbFile;

    invoke-direct {v0, p1}, Lmeizu_jcifs/smb/SmbFile;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 12
    .parameter "u"
    .parameter "spec"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 39
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 43
    .local v10, host:Ljava/lang/String;
    const-string v0, "smb://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    const-string p2, "smb:////"

    .line 45
    add-int/lit8 p4, p4, 0x2

    .line 51
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p4}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V

    .line 52
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, path:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, ref:Ljava/lang/String;
    if-eqz v11, :cond_1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 57
    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 58
    .local v4, port:I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_2

    .line 59
    invoke-virtual {p0}, Lmeizu_jcifs/smb/Handler;->getDefaultPort()I

    move-result v4

    .line 61
    :cond_2
    const-string v2, "smb"

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lmeizu_jcifs/smb/Handler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void

    .line 46
    .end local v4           #port:I
    .end local v7           #path:Ljava/lang/String;
    .end local v11           #ref:Ljava/lang/String;
    :cond_3
    const-string v0, "smb://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 49
    add-int/lit8 p4, p4, 0x2

    goto :goto_0
.end method
