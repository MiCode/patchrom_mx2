.class Lcom/android/server/am/UsageStatsService$3;
.super Ljava/lang/Thread;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UsageStatsService;->reportDatasToCloud()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UsageStatsService;

.field final synthetic val$dataItem:Lcom/android/server/am/UsageStatsService$PkgDataItem;

.field final synthetic val$request:Lorg/apache/http/client/methods/HttpPost;


# direct methods
.method constructor <init>(Lcom/android/server/am/UsageStatsService;Lorg/apache/http/client/methods/HttpPost;Lcom/android/server/am/UsageStatsService$PkgDataItem;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$3;->this$0:Lcom/android/server/am/UsageStatsService;

    iput-object p2, p0, Lcom/android/server/am/UsageStatsService$3;->val$request:Lorg/apache/http/client/methods/HttpPost;

    iput-object p3, p0, Lcom/android/server/am/UsageStatsService$3;->val$dataItem:Lcom/android/server/am/UsageStatsService$PkgDataItem;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1261
    const/4 v4, 0x0

    .line 1262
    .local v4, jsonString:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v8, 0x3

    if-ge v2, v8, :cond_0

    .line 1263
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1265
    .local v6, start:J
    invoke-static {}, Lcom/android/server/am/UsageStatsService;->access$500()Lorg/apache/http/client/HttpClient;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService$3;->val$request:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v8, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1267
    .local v5, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 1269
    const-string v8, "UsageStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "report finished, cost time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nreply jsonString: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v3, jsonObj:Lorg/json/JSONObject;
    const-string v8, "code"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1274
    .local v0, code:I
    const-string v8, "UsageStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reply:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_1

    .line 1276
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService$3;->val$dataItem:Lcom/android/server/am/UsageStatsService$PkgDataItem;

    const/4 v9, 0x1

    iput v9, v8, Lcom/android/server/am/UsageStatsService$PkgDataItem;->reported:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1287
    .end local v0           #code:I
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #start:J
    :cond_0
    :goto_1
    return-void

    .line 1262
    .restart local v0       #code:I
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    .restart local v5       #response:Lorg/apache/http/HttpResponse;
    .restart local v6       #start:J
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1283
    .end local v0           #code:I
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #start:J
    :catch_0
    move-exception v1

    .line 1284
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "UsageStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new Thread Exception caught: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
