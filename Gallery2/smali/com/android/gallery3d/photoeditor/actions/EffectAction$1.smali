.class Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;
.super Ljava/lang/Object;
.source "EffectAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/EffectAction;->end(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

.field final synthetic val$runnableOnODone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;->val$runnableOnODone:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$1;->val$runnableOnODone:Ljava/lang/Runnable;

    #calls: Lcom/android/gallery3d/photoeditor/actions/EffectAction;->finish(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->access$200(Lcom/android/gallery3d/photoeditor/actions/EffectAction;Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
