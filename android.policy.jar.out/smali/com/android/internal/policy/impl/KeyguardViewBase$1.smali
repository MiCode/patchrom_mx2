.class Lcom/android/internal/policy/impl/KeyguardViewBase$1;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewBase;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewBase$1;->this$0:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 64
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 68
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter "cf"

    .prologue
    .line 72
    return-void
.end method
