.class Lcom/meizu/app/AccessApplication$2;
.super Ljava/lang/Object;
.source "AccessApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/app/AccessApplication;->onCellFhish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/app/AccessApplication;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/app/AccessApplication;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    iput-object p2, p0, Lcom/meizu/app/AccessApplication$2;->val$password:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 150
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mLockPasswordUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->access$100(Lcom/meizu/app/AccessApplication;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/app/AccessApplication$2;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->acm:Landroid/content/pm/AccessControlManager;
    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->access$300(Lcom/meizu/app/AccessApplication;)Landroid/content/pm/AccessControlManager;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/app/AccessApplication;->access$200(Lcom/meizu/app/AccessApplication;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/AccessControlManager;->addAccessControlPass(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->access$400(Lcom/meizu/app/AccessApplication;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v1}, Lcom/meizu/app/AccessApplication;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 155
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x300

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->access$400(Lcom/meizu/app/AccessApplication;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v1, v0}, Lcom/meizu/app/AccessApplication;->startActivity(Landroid/content/Intent;)V

    .line 161
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v1}, Lcom/meizu/app/AccessApplication;->finish()V

    .line 167
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->access$500(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SystemLockView;->clearCell(Z)V

    .line 164
    iget-object v1, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    #getter for: Lcom/meizu/app/AccessApplication;->mLockDigitPanel:Lcom/meizu/widget/SystemLockView;
    invoke-static {v1}, Lcom/meizu/app/AccessApplication;->access$500(Lcom/meizu/app/AccessApplication;)Lcom/meizu/widget/SystemLockView;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/app/AccessApplication$2;->this$0:Lcom/meizu/app/AccessApplication;

    invoke-virtual {v2}, Lcom/meizu/app/AccessApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040593

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto :goto_0
.end method
