.class Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RoundCornerContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RoundCornerContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/RoundCornerContactBadge;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    .line 1153
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1154
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 1158
    const/4 v6, 0x0

    .line 1159
    .local v6, phonePrimary:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1160
    .local v3, lookupUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 1163
    .local v7, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 1230
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 1231
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1235
    :cond_1
    if-eqz v7, :cond_c

    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mIsClickToCall:Z
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$100(Lcom/meizu/widget/RoundCornerContactBadge;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1236
    const/4 v5, 0x0

    .line 1237
    .local v5, phone:Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$200(Lcom/meizu/widget/RoundCornerContactBadge;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1238
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactPhone:Ljava/lang/String;
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$200(Lcom/meizu/widget/RoundCornerContactBadge;)Ljava/lang/String;

    move-result-object v5

    .line 1245
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #calls: Lcom/meizu/widget/RoundCornerContactBadge;->makeCall(Ljava/lang/String;)V
    invoke-static {v8, v5}, Lcom/meizu/widget/RoundCornerContactBadge;->access$400(Lcom/meizu/widget/RoundCornerContactBadge;Ljava/lang/String;)V

    .line 1255
    .end local v5           #phone:Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 1165
    :pswitch_0
    const/4 v7, 0x1

    .line 1168
    :pswitch_1
    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1169
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1170
    .local v2, lookupKey:Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_6

    .line 1171
    const/4 v1, 0x0

    .line 1172
    .local v1, hasId:Z
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1173
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 1174
    const/4 v1, 0x1

    .line 1175
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1180
    :cond_5
    if-nez v1, :cond_6

    .line 1181
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    const-wide/16 v9, 0x0

    #setter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8, v9, v10}, Lcom/meizu/widget/RoundCornerContactBadge;->access$002(Lcom/meizu/widget/RoundCornerContactBadge;J)J

    .line 1185
    .end local v1           #hasId:Z
    :cond_6
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_8

    .line 1186
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1187
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v9, 0x0

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    #setter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8, v9, v10}, Lcom/meizu/widget/RoundCornerContactBadge;->access$002(Lcom/meizu/widget/RoundCornerContactBadge;J)J

    .line 1188
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 1189
    .local v4, num:Ljava/lang/String;
    if-eqz v4, :cond_8

    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_8

    .line 1191
    :cond_7
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1192
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1193
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v9, 0x0

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    #setter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8, v9, v10}, Lcom/meizu/widget/RoundCornerContactBadge;->access$002(Lcom/meizu/widget/RoundCornerContactBadge;J)J

    .line 1194
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1201
    .end local v4           #num:Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J

    move-result-wide v8

    invoke-static {v8, v9, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1202
    goto/16 :goto_0

    .line 1207
    .end local v2           #lookupKey:Ljava/lang/String;
    :pswitch_2
    const/4 v7, 0x1

    .line 1210
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1211
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v9, 0x0

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    #setter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8, v9, v10}, Lcom/meizu/widget/RoundCornerContactBadge;->access$002(Lcom/meizu/widget/RoundCornerContactBadge;J)J

    .line 1212
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1213
    .restart local v2       #lookupKey:Ljava/lang/String;
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J

    move-result-wide v8

    invoke-static {v8, v9, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1214
    goto/16 :goto_0

    .line 1219
    .end local v2           #lookupKey:Ljava/lang/String;
    :pswitch_4
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1220
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    const/4 v9, 0x0

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    #setter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8, v9, v10}, Lcom/meizu/widget/RoundCornerContactBadge;->access$002(Lcom/meizu/widget/RoundCornerContactBadge;J)J

    .line 1221
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1222
    .restart local v2       #lookupKey:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1223
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J

    move-result-wide v8

    invoke-static {v8, v9, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1224
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1230
    .end local v2           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v8

    if-eqz p3, :cond_9

    .line 1231
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v8

    .line 1239
    .restart local v5       #phone:Ljava/lang/String;
    :cond_a
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 1240
    move-object v5, v6

    goto/16 :goto_1

    .line 1241
    :cond_b
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 1242
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    iget-object v9, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #getter for: Lcom/meizu/widget/RoundCornerContactBadge;->mContactId:J
    invoke-static {v9}, Lcom/meizu/widget/RoundCornerContactBadge;->access$000(Lcom/meizu/widget/RoundCornerContactBadge;)J

    move-result-wide v9

    #calls: Lcom/meizu/widget/RoundCornerContactBadge;->queryPhoneNumber(J)Ljava/lang/String;
    invoke-static {v8, v9, v10}, Lcom/meizu/widget/RoundCornerContactBadge;->access$300(Lcom/meizu/widget/RoundCornerContactBadge;J)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1246
    .end local v5           #phone:Ljava/lang/String;
    :cond_c
    if-eqz v7, :cond_3

    .line 1247
    invoke-static {}, Lcom/meizu/widget/RoundCornerContactBadge;->access$500()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1248
    :try_start_1
    invoke-static {}, Lcom/meizu/widget/RoundCornerContactBadge;->access$600()Z

    move-result v8

    if-eqz v8, :cond_d

    monitor-exit v9

    goto/16 :goto_2

    .line 1251
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v8

    .line 1249
    :cond_d
    const/4 v8, 0x1

    :try_start_2
    invoke-static {v8}, Lcom/meizu/widget/RoundCornerContactBadge;->access$602(Z)Z

    .line 1250
    invoke-static {}, Lcom/meizu/widget/RoundCornerContactBadge;->access$700()Ljava/lang/Runnable;

    move-result-object v8

    const-wide/16 v10, 0xbb8

    invoke-virtual {p0, v8, v10, v11}, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1251
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1253
    iget-object v8, p0, Lcom/meizu/widget/RoundCornerContactBadge$QueryHandler;->this$0:Lcom/meizu/widget/RoundCornerContactBadge;

    #calls: Lcom/meizu/widget/RoundCornerContactBadge;->goContactDetail(Landroid/net/Uri;)V
    invoke-static {v8, v3}, Lcom/meizu/widget/RoundCornerContactBadge;->access$800(Lcom/meizu/widget/RoundCornerContactBadge;Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 1163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
