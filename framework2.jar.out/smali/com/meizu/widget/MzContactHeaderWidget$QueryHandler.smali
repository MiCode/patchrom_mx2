.class Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MzContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MzContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/MzContactHeaderWidget;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/MzContactHeaderWidget;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 302
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    .line 303
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 304
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 21
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 309
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mQueryHandler:Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$400(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;

    move-result-object v4

    move-object/from16 v0, p0

    if-eq v0, v4, :cond_1

    .line 310
    const-string v4, "MzContactHeaderWidget"

    const-string v6, "onQueryComplete: discard result, the query handler is reset!"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    if-eqz p3, :cond_0

    .line 449
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 452
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 314
    .restart local p2
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 448
    .end local p2
    :goto_1
    if-eqz p3, :cond_0

    .line 449
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 316
    .restart local p2
    :pswitch_0
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 317
    .local v16, number:Ljava/lang/String;
    const-wide/16 v7, -0x1

    .line 318
    .local v7, contactId:J
    const/4 v9, 0x0

    .line 319
    .local v9, displayName:Ljava/lang/String;
    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 321
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 322
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_3

    .line 323
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 326
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 333
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mEmailQuery:Z
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$500(Lcom/meizu/widget/MzContactHeaderWidget;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    const/4 v6, 0x0

    #setter for: Lcom/meizu/widget/MzContactHeaderWidget;->mEmailQuery:Z
    invoke-static {v4, v6}, Lcom/meizu/widget/MzContactHeaderWidget;->access$502(Lcom/meizu/widget/MzContactHeaderWidget;Z)Z

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mQueryHandler:Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$400(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v17, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .end local v7           #contactId:J
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "contact_id"

    aput-object v18, v8, v17

    const/16 v17, 0x1

    const-string v18, "data4"

    aput-object v18, v8, v17

    const/16 v17, 0x2

    const-string v18, "data1"

    aput-object v18, v8, v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 448
    .end local v9           #displayName:Ljava/lang/String;
    .end local v16           #number:Ljava/lang/String;
    .end local p2
    :catchall_0
    move-exception v4

    if-eqz p3, :cond_4

    .line 449
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 340
    .restart local v7       #contactId:J
    .restart local v9       #displayName:Ljava/lang/String;
    .restart local v16       #number:Ljava/lang/String;
    .restart local p2
    :cond_5
    :try_start_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 341
    move-object/from16 v9, v16

    .line 344
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v4, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v6, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    move-object/from16 v0, v16

    invoke-direct {v6, v7, v8, v9, v0}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$600(Lcom/meizu/widget/MzContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$600(Lcom/meizu/widget/MzContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 348
    .local v15, names:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$600(Lcom/meizu/widget/MzContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    .end local v15           #names:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mCountView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$700(Lcom/meizu/widget/MzContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v6, v6, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 351
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$600(Lcom/meizu/widget/MzContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 359
    .end local v7           #contactId:J
    .end local v9           #displayName:Ljava/lang/String;
    .end local v16           #number:Ljava/lang/String;
    :pswitch_1
    if-eqz p3, :cond_8

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 360
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 361
    .restart local v7       #contactId:J
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 362
    .restart local v9       #displayName:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 363
    .local v10, orgTag:Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 364
    .local v11, photoUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    const/4 v6, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v6, v6, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Lcom/meizu/widget/MzContactHeaderWidget;->bindContactInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 369
    .local v5, lookupUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v11}, Lcom/meizu/widget/MzContactHeaderWidget;->bindPhotoInfo(Landroid/net/Uri;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v4, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v6, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    move-object/from16 v17, v0

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/meizu/widget/MzContactHeaderWidget;->access$600(Lcom/meizu/widget/MzContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 374
    .end local v5           #lookupUri:Landroid/net/Uri;
    .end local v7           #contactId:J
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #orgTag:Ljava/lang/String;
    .end local v11           #photoUri:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/meizu/widget/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/meizu/widget/MzContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 381
    :pswitch_2
    if-eqz p3, :cond_b

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 382
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 383
    .restart local v7       #contactId:J
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 384
    .local v14, lookupKey:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 385
    .restart local v9       #displayName:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 386
    .restart local v10       #orgTag:Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 387
    .restart local v11       #photoUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v4, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    const/4 v6, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_a

    .line 390
    :cond_9
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v4, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    const/4 v6, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 393
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 394
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 395
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 396
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 397
    const/4 v4, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 403
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v6, v6, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Lcom/meizu/widget/MzContactHeaderWidget;->bindContactInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {v7, v8, v14}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 405
    .restart local v5       #lookupUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v11}, Lcom/meizu/widget/MzContactHeaderWidget;->bindPhotoInfo(Landroid/net/Uri;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v4, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v6, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    move-object/from16 v17, v0

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/meizu/widget/MzContactHeaderWidget;->access$600(Lcom/meizu/widget/MzContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v7, v8, v0, v1}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 409
    .end local v5           #lookupUri:Landroid/net/Uri;
    .end local v7           #contactId:J
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #orgTag:Ljava/lang/String;
    .end local v11           #photoUri:Ljava/lang/String;
    .end local v14           #lookupKey:Ljava/lang/String;
    .restart local p2
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    check-cast p2, Ljava/lang/String;

    .end local p2
    move-object/from16 v0, p2

    iput-object v0, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v6, v6, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/meizu/widget/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/meizu/widget/MzContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$800(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RoundCornerContactBadge;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v6, v6, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v4, v6, v0, v1, v2}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromPhone(Ljava/lang/String;ZJ)V

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mClickToCall:Z
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$900(Lcom/meizu/widget/MzContactHeaderWidget;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$800(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RoundCornerContactBadge;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickToCall(Z)V

    .line 418
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v4, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v6, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    const-wide/16 v17, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget;->mPhoneNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 416
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$800(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RoundCornerContactBadge;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickToCall(Z)V

    goto :goto_3

    .line 424
    .restart local p2
    :pswitch_3
    if-eqz p3, :cond_d

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 425
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 426
    .restart local v7       #contactId:J
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 427
    .restart local v14       #lookupKey:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 428
    .restart local v9       #displayName:Ljava/lang/String;
    const/4 v4, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 429
    .restart local v10       #orgTag:Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 430
    .restart local v11       #photoUri:Ljava/lang/String;
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    .line 431
    .local v12, email:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-virtual {v4, v9, v12}, Lcom/meizu/widget/MzContactHeaderWidget;->bindContactInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-static {v7, v8, v14}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 433
    .restart local v5       #lookupUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/meizu/widget/MzContactHeaderWidget;->bindPhotoInfo(Landroid/net/Uri;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v4, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v6, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    move-object/from16 v17, v0

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mDisplayNameView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/meizu/widget/MzContactHeaderWidget;->access$600(Lcom/meizu/widget/MzContactHeaderWidget;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v7, v8, v0, v12}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 437
    .end local v5           #lookupUri:Landroid/net/Uri;
    .end local v7           #contactId:J
    .end local v9           #displayName:Ljava/lang/String;
    .end local v10           #orgTag:Ljava/lang/String;
    .end local v11           #photoUri:Ljava/lang/String;
    .end local v12           #email:Ljava/lang/String;
    .end local v14           #lookupKey:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v13, v0

    .line 438
    .local v13, emailAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-virtual {v4, v13}, Lcom/meizu/widget/MzContactHeaderWidget;->setDisplayName(Ljava/lang/CharSequence;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/meizu/widget/MzContactHeaderWidget;->setPhoto(Landroid/graphics/Bitmap;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$800(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RoundCornerContactBadge;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v13, v6}, Lcom/meizu/widget/RoundCornerContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 441
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mPhotoView:Lcom/meizu/widget/RoundCornerContactBadge;
    invoke-static {v4}, Lcom/meizu/widget/MzContactHeaderWidget;->access$800(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RoundCornerContactBadge;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/meizu/widget/RoundCornerContactBadge;->setClickToCall(Z)V

    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/widget/MzContactHeaderWidget$QueryHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v4, v4, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    new-instance v6, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    invoke-direct {v6, v0, v1, v13, v13}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 314
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
