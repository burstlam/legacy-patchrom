.class public Landroid/net/vpn/L2tpIpsecPskProfile;
.super Landroid/net/vpn/L2tpProfile;
.source "L2tpIpsecPskProfile.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mPresharedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/vpn/L2tpProfile;-><init>()V

    return-void
.end method


# virtual methods
.method public getPresharedKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/vpn/L2tpIpsecPskProfile;->mPresharedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Landroid/net/vpn/VpnType;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/vpn/VpnType;->L2TP_IPSEC_PSK:Landroid/net/vpn/VpnType;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    invoke-super {p0, p1}, Landroid/net/vpn/L2tpProfile;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vpn/L2tpIpsecPskProfile;->mPresharedKey:Ljava/lang/String;

    return-void
.end method

.method public setPresharedKey(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    iput-object p1, p0, Landroid/net/vpn/L2tpIpsecPskProfile;->mPresharedKey:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/net/vpn/L2tpProfile;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/net/vpn/L2tpIpsecPskProfile;->mPresharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
