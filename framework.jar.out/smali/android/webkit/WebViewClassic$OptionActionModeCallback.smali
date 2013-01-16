.class Landroid/webkit/WebViewClassic$OptionActionModeCallback;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 1446
    iput-object p1, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1446
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$OptionActionModeCallback;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1474
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1497
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mOptionWindow:Lcom/meizu/widget/OptionPopupWindow;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Lcom/meizu/widget/OptionPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/widget/OptionPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1498
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mOptionWindow:Lcom/meizu/widget/OptionPopupWindow;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1300(Landroid/webkit/WebViewClassic;)Lcom/meizu/widget/OptionPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/widget/OptionPopupWindow;->dismiss()V

    .line 1500
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 1476
    :pswitch_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$300(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1477
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->copySelection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1478
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0

    .line 1484
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 1485
    .local v1, selection:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1486
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 1487
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1489
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1490
    const-string/jumbo v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1474
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 1450
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1451
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 1453
    const/16 v0, 0x64

    const v1, 0x1040001

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1459
    const/16 v0, 0x65

    const v1, 0x104000c

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1464
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1505
    iget-object v0, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mOptionActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$1402(Landroid/webkit/WebViewClassic;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1506
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1469
    const/4 v0, 0x0

    return v0
.end method
