.class Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk$2;
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


# direct methods
.method constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;)V
    .locals 0
    .parameter

    .prologue
    .line 872
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk$2;->this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk$2;->this$1:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPuk;->onSimLockChangedResponse(Z)V

    .line 875
    return-void
.end method
