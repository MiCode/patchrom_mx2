.class Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;
.super Landroid/os/Handler;
.source "MzContactHeaderWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/MzContactHeaderWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/MzContactHeaderWidget;


# direct methods
.method private constructor <init>(Lcom/meizu/widget/MzContactHeaderWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/MzContactHeaderWidget;Lcom/meizu/widget/MzContactHeaderWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1229
    invoke-direct {p0, p1}, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;-><init>(Lcom/meizu/widget/MzContactHeaderWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    .line 1232
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1239
    :pswitch_0
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    .line 1240
    .local v0, arr:[Ljava/lang/Object;
    aget-object v4, v0, v11

    check-cast v4, Ljava/lang/String;

    .line 1241
    .local v4, number:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v9, v0, v10

    check-cast v9, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1242
    .local v9, state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    const/4 v10, 0x2

    aget-object v10, v0, v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1243
    .local v8, sipVersion:I
    const/4 v6, 0x0

    .line 1244
    .local v6, sipOffline:Z
    const/4 v5, 0x0

    .line 1245
    .local v5, sipInvalid:Z
    const/4 v3, 0x0

    .line 1246
    .local v3, isExist:Z
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v10, v10, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    .line 1248
    .local v1, contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    invoke-virtual {v1}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1249
    const/4 v3, 0x1

    .line 1250
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v10, v10, Lcom/meizu/widget/MzContactHeaderWidget;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v10, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1100(Lcom/meizu/widget/MzContactHeaderWidget;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1252
    iget-object v12, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1200(Lcom/meizu/widget/MzContactHeaderWidget;)I

    move-result v10

    if-ge v8, v10, :cond_3

    move v10, v8

    :goto_1
    #setter for: Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I
    invoke-static {v12, v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1202(Lcom/meizu/widget/MzContactHeaderWidget;I)I

    .line 1253
    if-eqz v5, :cond_4

    .line 1273
    .end local v1           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    .line 1278
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1100(Lcom/meizu/widget/MzContactHeaderWidget;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 1281
    if-eqz v6, :cond_8

    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-virtual {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->containsEmail()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1283
    iget-object v12, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->isFirstOfflineChecked:Z
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1300(Lcom/meizu/widget/MzContactHeaderWidget;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v11

    :goto_3
    #setter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z
    invoke-static {v12, v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$102(Lcom/meizu/widget/MzContactHeaderWidget;Z)Z

    .line 1284
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/meizu/widget/FlymeButton;->setVisibility(I)V

    .line 1285
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v10

    iget-object v12, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z
    invoke-static {v12}, Lcom/meizu/widget/MzContactHeaderWidget;->access$100(Lcom/meizu/widget/MzContactHeaderWidget;)Z

    move-result v12

    invoke-virtual {v10, v12, v11}, Lcom/meizu/widget/FlymeButton;->setFlymeState(ZZ)V

    .line 1286
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #setter for: Lcom/meizu/widget/MzContactHeaderWidget;->isFirstOfflineChecked:Z
    invoke-static {v10, v11}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1302(Lcom/meizu/widget/MzContactHeaderWidget;Z)Z

    .line 1294
    :goto_4
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$300(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1295
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$300(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v12, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-virtual {v12}, Lcom/meizu/widget/MzContactHeaderWidget;->getSipDestState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    goto/16 :goto_0

    .line 1252
    .restart local v1       #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    :cond_3
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1200(Lcom/meizu/widget/MzContactHeaderWidget;)I

    move-result v10

    goto :goto_1

    .line 1258
    :cond_4
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v10, v10, Lcom/meizu/widget/MzContactHeaderWidget;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1260
    .local v7, sipState:Lcom/meizu/widget/RecipientStateInfo$SipState;
    sget-object v10, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-ne v7, v10, :cond_5

    .line 1261
    const/4 v6, 0x1

    .line 1264
    :cond_5
    if-eqz v7, :cond_6

    sget-object v10, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v7, v10, :cond_1

    sget-object v10, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_OFFLINE:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v7, v10, :cond_1

    .line 1265
    :cond_6
    const/4 v5, 0x1

    .line 1266
    if-eqz v3, :cond_1

    goto/16 :goto_2

    .line 1283
    .end local v1           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    .end local v7           #sipState:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_7
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$100(Lcom/meizu/widget/MzContactHeaderWidget;)Z

    move-result v10

    goto :goto_3

    .line 1287
    :cond_8
    if-nez v5, :cond_9

    .line 1288
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/meizu/widget/FlymeButton;->setVisibility(I)V

    .line 1289
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z
    invoke-static {v11}, Lcom/meizu/widget/MzContactHeaderWidget;->access$100(Lcom/meizu/widget/MzContactHeaderWidget;)Z

    move-result v11

    iget-object v12, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-virtual {v12}, Lcom/meizu/widget/MzContactHeaderWidget;->containsEmail()Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/meizu/widget/FlymeButton;->setFlymeState(ZZ)V

    goto :goto_4

    .line 1291
    :cond_9
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/meizu/widget/FlymeButton;->setVisibility(I)V

    goto :goto_4

    .line 1232
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
