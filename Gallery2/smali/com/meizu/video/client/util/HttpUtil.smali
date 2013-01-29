.class public Lcom/meizu/video/client/util/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field private static connectTimeOut:I

.field private static readTimeOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x3a98

    .line 22
    sput v0, Lcom/meizu/video/client/util/HttpUtil;->connectTimeOut:I

    .line 23
    sput v0, Lcom/meizu/video/client/util/HttpUtil;->readTimeOut:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "urlString"

    .prologue
    .line 27
    const-string v4, ""

    .line 28
    .local v4, reponseStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 30
    .local v2, localHttpURLConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 31
    const-string v5, "GET"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 32
    sget v5, Lcom/meizu/video/client/util/HttpUtil;->connectTimeOut:I

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 33
    sget v5, Lcom/meizu/video/client/util/HttpUtil;->readTimeOut:I

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 34
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 35
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 36
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 37
    .local v3, localInputStream:Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 38
    .local v1, localBufferedReader:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 40
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .end local v1           #localBufferedReader:Ljava/io/BufferedReader;
    .end local v3           #localInputStream:Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 48
    :cond_0
    return-object v4

    .line 43
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 43
    :cond_1
    throw v5

    .line 41
    :catch_0
    move-exception v5

    .line 43
    if-eqz v2, :cond_0

    goto :goto_0
.end method
