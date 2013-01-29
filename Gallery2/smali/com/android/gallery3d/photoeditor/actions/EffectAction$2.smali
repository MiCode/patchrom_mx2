.class Lcom/android/gallery3d/photoeditor/actions/EffectAction$2;
.super Ljava/lang/Object;
.source "EffectAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/EffectAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/EffectAction;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/EffectAction;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/EffectAction$2;->this$0:Lcom/android/gallery3d/photoeditor/actions/EffectAction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method
