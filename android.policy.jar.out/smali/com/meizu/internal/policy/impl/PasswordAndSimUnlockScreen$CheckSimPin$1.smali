.class Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin$1;
.super Ljava/lang/Object;
.source "PasswordAndSimUnlockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin$1;->this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;

    iput-boolean p2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin$1;->val$result:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin$1;->this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;

    iget-boolean v1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin$1;->val$result:Z

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;->onSimLockChangedResponse(Z)V

    .line 802
    return-void
.end method
