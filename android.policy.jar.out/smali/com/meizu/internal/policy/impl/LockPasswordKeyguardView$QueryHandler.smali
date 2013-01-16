.class Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "LockPasswordKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;


# direct methods
.method public constructor <init>(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    .line 1011
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1012
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 1049
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1066
    :goto_0
    invoke-super {p0, p1}, Landroid/content/AsyncQueryHandler;->handleMessage(Landroid/os/Message;)V

    .line 1069
    :goto_1
    return-void

    .line 1051
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    move-result-object v0

    const/16 v1, 0xa

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sCallLogUri:Landroid/net/Uri;

    const-string v5, "(type=3 AND (is_read=0 OR is_read IS NULL) AND duration>=5) OR (type=6 AND (is_read=0 OR is_read IS NULL))"

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1056
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    move-result-object v0

    const/16 v1, 0xb

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sSmsInboxUri:Landroid/net/Uri;

    const-string v5, " read = ? "

    new-array v6, v9, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v6, v8

    move-object v4, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    move-result-object v0

    const/16 v1, 0xc

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sMmsInboxUri:Landroid/net/Uri;

    const-string v5, " read = ? "

    new-array v6, v9, [Ljava/lang/String;

    const-string v4, "0"

    aput-object v4, v6, v8

    move-object v4, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1062
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mQueryHandler:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;
    invoke-static {v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1700(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;

    move-result-object v0

    const/16 v1, 0xd

    sget-object v3, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->sNewEmailUri:Landroid/net/Uri;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "sum(notifiedMessageCount)"

    aput-object v5, v4, v8

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1049
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 1016
    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 1017
    if-eqz p3, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateMissedCall(I)V
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1800(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)V

    .line 1019
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    .line 1022
    if-eqz p3, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #setter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1902(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)I

    .line 1024
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1026
    :cond_2
    const/16 v1, 0xc

    if-ne p1, v1, :cond_4

    .line 1027
    if-eqz p3, :cond_3

    .line 1028
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1912(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)I

    .line 1029
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1031
    :cond_3
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    iget-object v2, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #getter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I
    invoke-static {v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1900(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;)I

    move-result v2

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateUnreadSms(I)V
    invoke-static {v1, v2}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2000(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)V

    .line 1032
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #setter for: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->mSmsCount:I
    invoke-static {v1, v3}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$1902(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)I

    goto :goto_0

    .line 1033
    :cond_4
    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 1034
    if-eqz p3, :cond_0

    .line 1036
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1037
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1038
    .local v0, count:I
    iget-object v1, p0, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView$QueryHandler;->this$0:Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;

    #calls: Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->updateNewEmail(I)V
    invoke-static {v1, v0}, Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;->access$2100(Lcom/meizu/internal/policy/impl/LockPasswordKeyguardView;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    .end local v0           #count:I
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v1
.end method
