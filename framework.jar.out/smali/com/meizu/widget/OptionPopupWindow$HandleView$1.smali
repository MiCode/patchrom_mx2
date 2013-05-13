.class Lcom/meizu/widget/OptionPopupWindow$HandleView$1;
.super Ljava/lang/Object;
.source "OptionPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/OptionPopupWindow$HandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/widget/OptionPopupWindow$HandleView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/OptionPopupWindow$HandleView;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;->this$1:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 222
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;->this$1:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    iget-object v3, v3, Lcom/meizu/widget/OptionPopupWindow$HandleView;->this$0:Lcom/meizu/widget/OptionPopupWindow;

    #getter for: Lcom/meizu/widget/OptionPopupWindow;->mActionMode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    invoke-static {v3}, Lcom/meizu/widget/OptionPopupWindow;->access$000(Lcom/meizu/widget/OptionPopupWindow;)Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;

    move-result-object v2

    .line 224
    .local v2, mode:Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;->this$1:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    #getter for: Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I
    invoke-static {v3}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->access$100(Lcom/meizu/widget/OptionPopupWindow$HandleView;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 225
    #getter for: Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v2}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->access$200(Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    .line 226
    .local v1, menu:Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;->this$1:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    #getter for: Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I
    invoke-static {v3}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->access$100(Lcom/meizu/widget/OptionPopupWindow$HandleView;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 227
    .local v0, item:Landroid/view/MenuItem;
    invoke-virtual {v2, v1, v0}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {v2}, Lcom/meizu/widget/OptionPopupWindow$OptionActionMode;->finish()V

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/meizu/widget/OptionPopupWindow$HandleView$1;->this$1:Lcom/meizu/widget/OptionPopupWindow$HandleView;

    const/4 v4, -0x1

    #setter for: Lcom/meizu/widget/OptionPopupWindow$HandleView;->mActionIndex:I
    invoke-static {v3, v4}, Lcom/meizu/widget/OptionPopupWindow$HandleView;->access$102(Lcom/meizu/widget/OptionPopupWindow$HandleView;I)I

    .line 232
    .end local v0           #item:Landroid/view/MenuItem;
    .end local v1           #menu:Lcom/android/internal/view/menu/MenuBuilder;
    :cond_1
    return-void
.end method
