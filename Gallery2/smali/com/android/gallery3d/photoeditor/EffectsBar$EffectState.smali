.class public Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;
.super Ljava/lang/Object;
.source "EffectsBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/EffectsBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectState"
.end annotation


# instance fields
.field private mEffectId:I

.field private mEffectName:Ljava/lang/String;

.field private mIsSelect:Z

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/photoeditor/EffectsBar;ILjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "isSelect"

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->this$0:Lcom/android/gallery3d/photoeditor/EffectsBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput p2, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->mEffectId:I

    .line 625
    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->mEffectName:Ljava/lang/String;

    .line 626
    iput-boolean p4, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->mIsSelect:Z

    .line 627
    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 618
    iget v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->mEffectId:I

    return v0
.end method


# virtual methods
.method public getEffectState()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->mIsSelect:Z

    return v0
.end method

.method public setEffectState(Z)V
    .locals 0
    .parameter "isSelect"

    .prologue
    .line 634
    iput-boolean p1, p0, Lcom/android/gallery3d/photoeditor/EffectsBar$EffectState;->mIsSelect:Z

    .line 635
    return-void
.end method
