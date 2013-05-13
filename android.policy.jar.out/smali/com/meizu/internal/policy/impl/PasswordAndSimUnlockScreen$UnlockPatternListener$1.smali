.class Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener$1;
.super Ljava/lang/Object;
.source "PasswordAndSimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;)V
    .locals 0
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener$1;->this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener$1;->this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;

    iget-object v0, v0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    iget-object v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener$1;->this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;

    iget-object v1, v1, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$UnlockPatternListener;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    #getter for: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->mInputNum:Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1000(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->checkPassword(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->access$1600(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V

    .line 581
    return-void
.end method
