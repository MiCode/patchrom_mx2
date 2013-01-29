.class Lcom/android/gallery3d/photoeditor/FilterStack$1;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/FilterStack;->callbackDone(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

.field final synthetic val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$1;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/FilterStack$1;->val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$1;->val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;

    invoke-interface {v0}, Lcom/android/gallery3d/photoeditor/OnDoneCallback;->onDone()V

    .line 165
    return-void
.end method
