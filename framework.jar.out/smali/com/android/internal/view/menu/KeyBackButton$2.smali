.class Lcom/android/internal/view/menu/KeyBackButton$2;
.super Ljava/lang/Object;
.source "KeyBackButton.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/KeyBackButton;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/KeyBackButton;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/KeyBackButton;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/view/menu/KeyBackButton$2;->this$0:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputShownChanged(Z)V
    .locals 3
    .parameter "shown"

    .prologue
    .line 77
    iget-object v1, p0, Lcom/android/internal/view/menu/KeyBackButton$2;->this$0:Lcom/android/internal/view/menu/KeyBackButton;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/KeyBackButton;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 78
    .local v0, vh:Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 82
    iget-object v1, p0, Lcom/android/internal/view/menu/KeyBackButton$2;->this$0:Lcom/android/internal/view/menu/KeyBackButton;

    #calls: Lcom/android/internal/view/menu/KeyBackButton;->updateImageDrawable(Z)V
    invoke-static {v1, p1}, Lcom/android/internal/view/menu/KeyBackButton;->access$100(Lcom/android/internal/view/menu/KeyBackButton;Z)V

    goto :goto_0

    .line 84
    :cond_1
    new-instance v1, Lcom/android/internal/view/menu/KeyBackButton$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/view/menu/KeyBackButton$2$1;-><init>(Lcom/android/internal/view/menu/KeyBackButton$2;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
