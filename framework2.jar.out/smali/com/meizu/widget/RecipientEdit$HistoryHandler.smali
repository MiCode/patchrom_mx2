.class Lcom/meizu/widget/RecipientEdit$HistoryHandler;
.super Landroid/os/Handler;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HistoryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/RecipientEdit;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 3171
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    .line 3172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 3177
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 3207
    :goto_0
    return-void

    .line 3179
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    move-object v2, v7

    check-cast v2, [Ljava/lang/String;

    .line 3180
    .local v2, entries:[Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/meizu/widget/RecipientEdit;->access$3400(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3181
    :try_start_0
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;
    invoke-static {v7}, Lcom/meizu/widget/RecipientEdit;->access$3600(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientDbHelper;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3182
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;
    invoke-static {v7}, Lcom/meizu/widget/RecipientEdit;->access$3600(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientDbHelper;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/meizu/widget/RecipientEmailHistory;->saveHistory(Lcom/meizu/widget/RecipientDbHelper;[Ljava/lang/String;)V

    .line 3186
    :goto_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 3184
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/meizu/widget/RecipientEdit;->access$3900(Lcom/meizu/widget/RecipientEdit;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/meizu/widget/RecipientEmailHistory;->saveHistory(Landroid/content/Context;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3190
    .end local v2           #entries:[Ljava/lang/String;
    :pswitch_1
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDbLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/meizu/widget/RecipientEdit;->access$3400(Lcom/meizu/widget/RecipientEdit;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 3191
    :try_start_2
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;
    invoke-static {v7}, Lcom/meizu/widget/RecipientEdit;->access$3600(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientDbHelper;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 3192
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .line 3193
    .local v4, obj:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v5, v4, v7

    .line 3194
    .local v5, phoneOrEmail:Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v3, v4, v7

    .line 3196
    .local v3, name:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3197
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "display_name"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3198
    iget-object v7, p0, Lcom/meizu/widget/RecipientEdit$HistoryHandler;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mDbHelper:Lcom/meizu/widget/RecipientDbHelper;
    invoke-static {v7}, Lcom/meizu/widget/RecipientEdit;->access$3600(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientDbHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/meizu/widget/RecipientDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3199
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v7, "email"

    const-string v9, "email=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v1, v7, v6, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3204
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #obj:[Ljava/lang/String;
    .end local v5           #phoneOrEmail:Ljava/lang/String;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_1
    monitor-exit v8

    goto :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 3177
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
