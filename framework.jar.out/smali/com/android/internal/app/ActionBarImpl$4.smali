.class Lcom/android/internal/app/ActionBarImpl$4;
.super Ljava/lang/Object;
.source "ActionBarImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ActionBarImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ActionBarImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1402
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl$4;->this$0:Lcom/android/internal/app/ActionBarImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl$4;->this$0:Lcom/android/internal/app/ActionBarImpl;

    #calls: Lcom/android/internal/app/ActionBarImpl;->updateEmbededTabs()V
    invoke-static {v0}, Lcom/android/internal/app/ActionBarImpl;->access$1400(Lcom/android/internal/app/ActionBarImpl;)V

    .line 1405
    return-void
.end method
