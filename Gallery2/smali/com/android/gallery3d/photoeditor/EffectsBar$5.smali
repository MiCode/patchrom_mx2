.class Lcom/android/gallery3d/photoeditor/EffectsBar$5;
.super Ljava/lang/Object;
.source "EffectsBar.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/EffectAction$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;->enterMarkedMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;)V
    .locals 0
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$5;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOk()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$5;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    #calls: Lcom/android/gallery3d/photoeditor/EffectsBar;->exitActiveEffect(Ljava/lang/Runnable;)Z
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->access$1300(Lcom/android/gallery3d/photoeditor/EffectsBar;Ljava/lang/Runnable;)Z

    .line 409
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$5;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->exit(Ljava/lang/Runnable;)Z

    .line 410
    return-void
.end method
