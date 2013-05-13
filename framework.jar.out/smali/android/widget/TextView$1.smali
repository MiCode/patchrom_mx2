.class Landroid/widget/TextView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManager$InputShownChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->updateCurrentCursorVisbilityOnFocusOrInputTypeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 3216
    iput-object p1, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputShownChanged(Z)V
    .locals 3
    .parameter "shown"

    .prologue
    .line 3219
    iget-object v1, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3220
    .local v0, vh:Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 3235
    :cond_0
    :goto_0
    return-void

    .line 3223
    :cond_1
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 3224
    iget-object v1, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->updateCurrentCursorVisbility(Z)Z
    invoke-static {v1, p1}, Landroid/widget/TextView;->access$000(Landroid/widget/TextView;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3225
    iget-object v1, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 3228
    :cond_2
    new-instance v1, Landroid/widget/TextView$1$1;

    invoke-direct {v1, p0, p1}, Landroid/widget/TextView$1$1;-><init>(Landroid/widget/TextView$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
