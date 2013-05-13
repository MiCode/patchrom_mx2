.class Lcom/android/internal/view/menu/KeyBackButton$2$1;
.super Ljava/lang/Object;
.source "KeyBackButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/KeyBackButton$2;->onInputShownChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/view/menu/KeyBackButton$2;

.field final synthetic val$shown:Z


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/KeyBackButton$2;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/view/menu/KeyBackButton$2$1;->this$1:Lcom/android/internal/view/menu/KeyBackButton$2;

    iput-boolean p2, p0, Lcom/android/internal/view/menu/KeyBackButton$2$1;->val$shown:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/view/menu/KeyBackButton$2$1;->this$1:Lcom/android/internal/view/menu/KeyBackButton$2;

    iget-boolean v1, p0, Lcom/android/internal/view/menu/KeyBackButton$2$1;->val$shown:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/KeyBackButton$2;->onInputShownChanged(Z)V

    .line 102
    return-void
.end method
