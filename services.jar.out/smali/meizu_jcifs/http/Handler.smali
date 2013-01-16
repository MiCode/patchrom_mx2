.class public Lmeizu_jcifs/http/Handler;
.super Ljava/net/URLStreamHandler;
.source "Handler.java"


# static fields
.field public static final DEFAULT_HTTP_PORT:I = 0x50

.field private static final HANDLER_PKGS_PROPERTY:Ljava/lang/String; = "java.protocol.handler.pkgs"

.field private static final JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

.field private static final PROTOCOL_HANDLERS:Ljava/util/Map;

.field private static factory:Ljava/net/URLStreamHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmeizu_jcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sun.net.www.protocol"

    aput-object v2, v0, v1

    sput-object v0, Lmeizu_jcifs/http/Handler;->JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    return-void
.end method

.method private static getDefaultStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 13
    .parameter "protocol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v10, Lmeizu_jcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    monitor-enter v10

    .line 104
    :try_start_0
    sget-object v9, Lmeizu_jcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    invoke-interface {v9, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URLStreamHandler;

    .line 106
    .local v2, handler:Ljava/net/URLStreamHandler;
    if-eqz v2, :cond_0

    monitor-exit v10

    move-object v3, v2

    .line 155
    .end local v2           #handler:Ljava/net/URLStreamHandler;
    .local v3, handler:Ljava/net/URLStreamHandler;
    :goto_0
    return-object v3

    .line 107
    .end local v3           #handler:Ljava/net/URLStreamHandler;
    .restart local v2       #handler:Ljava/net/URLStreamHandler;
    :cond_0
    sget-object v9, Lmeizu_jcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v9, :cond_1

    .line 108
    sget-object v9, Lmeizu_jcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    invoke-interface {v9, p0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v2

    .line 110
    :cond_1
    if-nez v2, :cond_4

    .line 111
    const-string v9, "java.protocol.handler.pkgs"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, path:Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v9, "|"

    invoke-direct {v8, v6, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .local v8, tokenizer:Ljava/util/StringTokenizer;
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 114
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, provider:Ljava/lang/String;
    const-string v9, "meizu_jcifs"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 116
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".Handler"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 118
    .local v1, className:Ljava/lang/String;
    const/4 v4, 0x0

    .line 120
    .local v4, handlerClass:Ljava/lang/Class;
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 122
    :goto_2
    if-nez v4, :cond_3

    .line 123
    :try_start_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 126
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/URLStreamHandler;

    move-object v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 131
    .end local v1           #className:Ljava/lang/String;
    .end local v4           #handlerClass:Ljava/lang/Class;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #provider:Ljava/lang/String;
    .end local v8           #tokenizer:Ljava/util/StringTokenizer;
    :cond_4
    if-nez v2, :cond_6

    .line 132
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    :try_start_3
    sget-object v9, Lmeizu_jcifs/http/Handler;->JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_6

    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lmeizu_jcifs/http/Handler;->JVM_VENDOR_DEFAULT_PKGS:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ".Handler"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 136
    .restart local v1       #className:Ljava/lang/String;
    const/4 v4, 0x0

    .line 138
    .restart local v4       #handlerClass:Ljava/lang/Class;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v4

    .line 140
    :goto_4
    if-nez v4, :cond_5

    .line 141
    :try_start_5
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 144
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/URLStreamHandler;

    move-object v2, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 146
    :goto_5
    if-eqz v2, :cond_7

    .line 149
    .end local v1           #className:Ljava/lang/String;
    .end local v4           #handlerClass:Ljava/lang/Class;
    .end local v5           #i:I
    :cond_6
    if-nez v2, :cond_8

    .line 150
    :try_start_6
    new-instance v9, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to find default handler for protocol: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 156
    .end local v2           #handler:Ljava/net/URLStreamHandler;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v9

    .line 132
    .restart local v1       #className:Ljava/lang/String;
    .restart local v2       #handler:Ljava/net/URLStreamHandler;
    .restart local v4       #handlerClass:Ljava/lang/Class;
    .restart local v5       #i:I
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 154
    .end local v1           #className:Ljava/lang/String;
    .end local v4           #handlerClass:Ljava/lang/Class;
    .end local v5           #i:I
    :cond_8
    :try_start_7
    sget-object v9, Lmeizu_jcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    invoke-interface {v9, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v2

    .end local v2           #handler:Ljava/net/URLStreamHandler;
    .restart local v3       #handler:Ljava/net/URLStreamHandler;
    goto/16 :goto_0

    .line 121
    .end local v3           #handler:Ljava/net/URLStreamHandler;
    .restart local v1       #className:Ljava/lang/String;
    .restart local v2       #handler:Ljava/net/URLStreamHandler;
    .restart local v4       #handlerClass:Ljava/lang/Class;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #provider:Ljava/lang/String;
    .restart local v8       #tokenizer:Ljava/util/StringTokenizer;
    :catch_0
    move-exception v9

    goto :goto_2

    .line 139
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #provider:Ljava/lang/String;
    .end local v8           #tokenizer:Ljava/util/StringTokenizer;
    .restart local v5       #i:I
    :catch_1
    move-exception v9

    goto :goto_4

    .line 145
    :catch_2
    move-exception v9

    goto :goto_5

    .line 128
    .end local v5           #i:I
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #provider:Ljava/lang/String;
    .restart local v8       #tokenizer:Ljava/util/StringTokenizer;
    :catch_3
    move-exception v9

    goto/16 :goto_1
.end method

.method public static setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .locals 3
    .parameter "factory"

    .prologue
    .line 75
    sget-object v1, Lmeizu_jcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    monitor-enter v1

    .line 76
    :try_start_0
    sget-object v0, Lmeizu_jcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "URLStreamHandlerFactory already set."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 80
    :cond_0
    :try_start_1
    sget-object v0, Lmeizu_jcifs/http/Handler;->PROTOCOL_HANDLERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    sput-object p0, Lmeizu_jcifs/http/Handler;->factory:Ljava/net/URLStreamHandlerFactory;

    .line 82
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    return-void
.end method


# virtual methods
.method protected getDefaultPort()I
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x50

    return v0
.end method

.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmeizu_jcifs/http/Handler;->getDefaultStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    .line 97
    .end local p1
    .local v0, url:Ljava/net/URL;
    new-instance v2, Lmeizu_jcifs/http/NtlmHttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    invoke-direct {v2, v1}, Lmeizu_jcifs/http/NtlmHttpURLConnection;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v2
.end method
