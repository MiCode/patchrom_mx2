.class Lcom/android/internal/widget/MzActionBarContainer$4;
.super Lcom/android/internal/app/IDockActionCallback$Stub;
.source "MzActionBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MzActionBarContainer;->deactive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MzActionBarContainer;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MzActionBarContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/internal/widget/MzActionBarContainer$4;->this$0:Lcom/android/internal/widget/MzActionBarContainer;

    invoke-direct {p0}, Lcom/android/internal/app/IDockActionCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionEvent(II)V
    .locals 0
    .parameter "event"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 355
    return-void
.end method
