.class Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass$1;
.super Ljava/lang/Object;
.source "FindPhoneUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass$1;->this$1:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;

    iput p2, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass$1;->val$result:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass$1;->this$1:Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;

    iget v1, p0, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass$1;->val$result:I

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/FindPhoneUnlockScreen$checkFindPhoneLockClass;->onFindPhoneLockChangedResponse(I)V

    .line 574
    return-void
.end method
