.class Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;
.super Landroid/os/Handler;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 267
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 268
    if-nez p1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 271
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #setter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->isLoading:Z
    invoke-static {v0, v2}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$902(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;Z)Z

    .line 274
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->InitAdapter()V

    .line 275
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->reommend_progressbar_layout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1000(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->setList(Ljava/util/ArrayList;)V

    .line 277
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->notifyDataSetChanged()V

    .line 278
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->setList(Ljava/util/ArrayList;)V

    .line 279
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->notifyDataSetChanged()V

    .line 280
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_network_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_available_network:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->no_available_network:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->wholeFocusImageNum:I
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$800(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 290
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageInitPosition:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->wholeFocusImageNum:I
    invoke-static {v2}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$800(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageInitPosition:I
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1502(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;I)I

    .line 291
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageGallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1600(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageInitPosition:I
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1500(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 295
    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->InitAdapter()V

    .line 296
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$400(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->setList(Ljava/util/ArrayList;)V

    .line 297
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1100(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendAdapter;->notifyDataSetChanged()V

    .line 298
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->recommendFocusListEntity:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$300(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->setList(Ljava/util/ArrayList;)V

    .line 299
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment$2;->this$0:Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;

    #getter for: Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->focusImageAdapter:Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;->access$1200(Lcom/meizu/video/client/ui/module/recommend/RecommendFragment;)Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/recommend/RecommendFocusAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
