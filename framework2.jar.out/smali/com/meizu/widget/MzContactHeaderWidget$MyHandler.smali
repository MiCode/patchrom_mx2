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
    .line 1193
    iput-object p1, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/widget/MzContactHeaderWidget;Lcom/meizu/widget/MzContactHeaderWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1193
    invoke-direct {p0, p1}, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;-><init>(Lcom/meizu/widget/MzContactHeaderWidget;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1196
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1251
    :cond_0
    :goto_0
    return-void

    .line 1198
    :pswitch_0
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/meizu/widget/FlymeButton;->setVisibility(I)V

    .line 1199
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meizu/widget/FlymeButton;->showProgressBar()V

    goto :goto_0

    .line 1203
    :pswitch_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, [Ljava/lang/Object;

    move-object v0, v9

    check-cast v0, [Ljava/lang/Object;

    .line 1204
    .local v0, arr:[Ljava/lang/Object;
    aget-object v4, v0, v11

    check-cast v4, Ljava/lang/String;

    .line 1205
    .local v4, number:Ljava/lang/String;
    aget-object v8, v0, v12

    check-cast v8, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1206
    .local v8, state:Lcom/meizu/widget/RecipientStateInfo$SipState;
    const/4 v9, 0x2

    aget-object v9, v0, v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1207
    .local v7, sipVersion:I
    const/4 v5, 0x0

    .line 1208
    .local v5, sipInvalid:Z
    const/4 v3, 0x0

    .line 1209
    .local v3, isExist:Z
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v9, v9, Lcom/meizu/widget/MzContactHeaderWidget;->mContactsList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;

    .line 1210
    .local v1, contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    invoke-virtual {v1}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1211
    const/4 v3, 0x1

    .line 1212
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v9, v9, Lcom/meizu/widget/MzContactHeaderWidget;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v9, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1100(Lcom/meizu/widget/MzContactHeaderWidget;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1214
    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1200(Lcom/meizu/widget/MzContactHeaderWidget;)I

    move-result v9

    if-ge v7, v9, :cond_3

    move v9, v7

    :goto_1
    #setter for: Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I
    invoke-static {v10, v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1202(Lcom/meizu/widget/MzContactHeaderWidget;I)I

    .line 1215
    if-eqz v5, :cond_4

    .line 1229
    .end local v1           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    :cond_2
    :goto_2
    if-eqz v3, :cond_0

    .line 1233
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mCheckedNumber:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1100(Lcom/meizu/widget/MzContactHeaderWidget;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    .line 1234
    invoke-virtual {p0, v12}, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->removeMessages(I)V

    .line 1235
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meizu/widget/FlymeButton;->dismissProgressBar()V

    .line 1236
    if-nez v5, :cond_6

    .line 1237
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/meizu/widget/FlymeButton;->setVisibility(I)V

    .line 1238
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeOn:Z
    invoke-static {v10}, Lcom/meizu/widget/MzContactHeaderWidget;->access$100(Lcom/meizu/widget/MzContactHeaderWidget;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/meizu/widget/FlymeButton;->setFlymeState(Z)V

    .line 1243
    :goto_3
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$300(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1244
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$300(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    move-result-object v9

    iget-object v10, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v11, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    invoke-virtual {v11}, Lcom/meizu/widget/MzContactHeaderWidget;->getSipDestState()Lcom/meizu/widget/RecipientStateInfo$SipState;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    goto/16 :goto_0

    .line 1214
    .restart local v1       #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    :cond_3
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mSipVersion:I
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$1200(Lcom/meizu/widget/MzContactHeaderWidget;)I

    move-result v9

    goto :goto_1

    .line 1220
    :cond_4
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    iget-object v9, v9, Lcom/meizu/widget/MzContactHeaderWidget;->mRecipientState:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/widget/RecipientStateInfo$SipState;

    .line 1221
    .local v6, sipState:Lcom/meizu/widget/RecipientStateInfo$SipState;
    if-eqz v6, :cond_5

    sget-object v9, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_YES:Lcom/meizu/widget/RecipientStateInfo$SipState;

    if-eq v6, v9, :cond_1

    .line 1222
    :cond_5
    const/4 v5, 0x1

    .line 1223
    if-eqz v3, :cond_1

    goto :goto_2

    .line 1240
    .end local v1           #contact:Lcom/meizu/widget/MzContactHeaderWidget$ContactInfo;
    .end local v6           #sipState:Lcom/meizu/widget/RecipientStateInfo$SipState;
    :cond_6
    iget-object v9, p0, Lcom/meizu/widget/MzContactHeaderWidget$MyHandler;->this$0:Lcom/meizu/widget/MzContactHeaderWidget;

    #getter for: Lcom/meizu/widget/MzContactHeaderWidget;->mFlymeView:Lcom/meizu/widget/FlymeButton;
    invoke-static {v9}, Lcom/meizu/widget/MzContactHeaderWidget;->access$200(Lcom/meizu/widget/MzContactHeaderWidget;)Lcom/meizu/widget/FlymeButton;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/meizu/widget/FlymeButton;->setVisibility(I)V

    goto :goto_3

    .line 1196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
