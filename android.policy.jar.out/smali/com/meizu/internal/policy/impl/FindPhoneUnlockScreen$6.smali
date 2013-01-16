.class Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$6;
.super Ljava/lang/Object;
.source "FindPhoneUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$6;->this$0:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->mInputEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;->access$200(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 211
    return-void
.end method
