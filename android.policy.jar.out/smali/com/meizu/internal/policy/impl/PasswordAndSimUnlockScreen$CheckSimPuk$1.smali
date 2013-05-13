.class Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk$1;
.super Ljava/lang/Object;
.source "PasswordAndSimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk$1;->this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;

    iput-boolean p2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk$1;->val$result:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk$1;->this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;

    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 869
    return-void
.end method
