.class Lcom/meizu/video/client/ui/module/search/SearchFragment$6;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/video/client/ui/module/search/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/meizu/video/client/ui/module/search/SearchFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    invoke-virtual {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 633
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    const/4 v1, 0x0

    #setter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mbShowing:Z
    invoke-static {v0, v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$2402(Lcom/meizu/video/client/ui/module/search/SearchFragment;Z)Z

    .line 634
    iget-object v0, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/video/client/ui/module/search/SearchFragment$6;->this$0:Lcom/meizu/video/client/ui/module/search/SearchFragment;

    #getter for: Lcom/meizu/video/client/ui/module/search/SearchFragment;->mQueryText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/meizu/video/client/ui/module/search/SearchFragment;->access$600(Lcom/meizu/video/client/ui/module/search/SearchFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :cond_1
    :goto_0
    return v3

    .line 636
    :catch_0
    move-exception v0

    goto :goto_0
.end method
