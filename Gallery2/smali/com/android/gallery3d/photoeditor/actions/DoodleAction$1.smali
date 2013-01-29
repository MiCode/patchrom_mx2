.class Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;
.super Ljava/lang/Object;
.source "DoodleAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/DoodleView$OnDoodleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/DoodleAction;Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoodleChanged(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 2
    .parameter "doodle"

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->inBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onDoodleFinished(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 2
    .parameter "doodle"

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/android/gallery3d/photoeditor/actions/Doodle;->inBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->addDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 60
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onDoodleRemoved(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V
    .locals 2
    .parameter "doodle"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->removeDoodle(Lcom/android/gallery3d/photoeditor/actions/Doodle;)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 68
    return-void
.end method

.method public onDoodleRmovedAll()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->removeAll()V

    .line 85
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 86
    return-void
.end method

.method public onDoodleTextStringAdd(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "textString"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->addDoodleString(ILjava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 80
    return-void
.end method

.method public onDoodleTextStringDelete(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->removeDoodleTextString(I)V

    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 92
    return-void
.end method

.method public onTextDoodleRemoved(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;->removeTextDoodle(I)V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/DoodleAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/DoodleAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/DoodleFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/DoodleAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 74
    return-void
.end method
