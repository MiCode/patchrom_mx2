.class Lcom/android/internal/policy/impl/PhoneWindowManager$35;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 6119
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 6122
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 6123
    .local v1, point:Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 6124
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 6125
    .local v2, width:I
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 6126
    .local v0, height:I
    if-ge v2, v0, :cond_0

    .line 6127
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$35;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenDimByHome:Z
    invoke-static {v3, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$902(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->toggleRecentApps()V

    :cond_0
    return-void
.end method
