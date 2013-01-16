.class public Landroid/provider/Browser$CategoryColumms;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CategoryColumms"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "category_name"

.field public static final POSITION:Ljava/lang/String; = "category_position"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 737
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
