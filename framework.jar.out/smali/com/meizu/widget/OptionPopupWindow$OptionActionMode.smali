.class Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
.super Landroid/view/ActionMode;
.source "OptionPopupWindow.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/OptionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionActionMode"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/meizu/widget/OptionPopupWindow;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/OptionPopupWindow;Landroid/view/ActionMode$Callback;)V
    .locals 2
    .parameter
    .parameter "cb"

    .prologue
    .line 543
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 544
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/meizu/widget/OptionPopupWindow;->access$600(Lcom/meizu/widget/OptionPopupWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 545
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 546
    iput-object p2, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 547
    return-void
.end method

.method static synthetic access$200(Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 587
    :try_start_0
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 589
    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 587
    return v0

    .line 589
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 595
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v0}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/OptionPopupWindow;->dismiss()V

    .line 601
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 602
    iput-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 603
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #setter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v0, v1}, Lcom/meizu/widget/OptionPopupWindow;->access$002(Lcom/meizu/widget/OptionPopupWindow;Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 623
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 628
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/widget/OptionPopupWindow;->access$600(Lcom/meizu/widget/OptionPopupWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 618
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    .line 582
    return-void

    .line 580
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    throw v0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    .line 635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 639
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 572
    return-void
.end method

.method public setSubtitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 567
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "subtitle"

    .prologue
    .line 562
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 557
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 552
    return-void
.end method
