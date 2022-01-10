﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
using WebApi.Infrastructure.Persistance;

namespace WebApi.Infrastructure.Migrations
{
    [DbContext(typeof(EntityContext))]
    [Migration("20210202041807_InitialMigration")]
    partial class InitialMigration
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .UseIdentityByDefaultColumns()
                .HasAnnotation("Relational:MaxIdentifierLength", 63)
                .HasAnnotation("ProductVersion", "5.0.2");

            modelBuilder.Entity("WebApi.Application.Entities.PostalAddress", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid")
                        .HasColumnName("id");

                    b.Property<string>("City")
                        .HasColumnType("text")
                        .HasColumnName("city");

                    b.Property<string>("Complement")
                        .HasColumnType("text")
                        .HasColumnName("complement");

                    b.Property<string>("CountryName")
                        .HasColumnType("text")
                        .HasColumnName("country_name");

                    b.Property<string>("Neighborhood")
                        .HasColumnType("text")
                        .HasColumnName("neighborhood");

                    b.Property<string>("Number")
                        .HasColumnType("text")
                        .HasColumnName("number");

                    b.Property<string>("PostalCode")
                        .HasColumnType("text")
                        .HasColumnName("postal_code");

                    b.Property<string>("StateCode")
                        .HasColumnType("text")
                        .HasColumnName("state_code");

                    b.Property<string>("StreetName")
                        .HasColumnType("text")
                        .HasColumnName("street_name");

                    b.HasKey("Id")
                        .HasName("pk_postal_address");

                    b.ToTable("postal_address");
                });

            modelBuilder.Entity("WebApi.Application.Entities.User", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid")
                        .HasColumnName("id");

                    b.Property<string>("EMail")
                        .HasColumnType("text")
                        .HasColumnName("e_mail");

                    b.Property<string>("Name")
                        .HasColumnType("text")
                        .HasColumnName("name");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("text")
                        .HasColumnName("password_hash");

                    b.Property<Guid?>("PostalAddressId")
                        .HasColumnType("uuid")
                        .HasColumnName("postal_address_id");

                    b.HasKey("Id")
                        .HasName("pk_users");

                    b.HasIndex("PostalAddressId")
                        .HasDatabaseName("ix_users_postal_address_id");

                    b.ToTable("users");
                });

            modelBuilder.Entity("WebApi.Application.Entities.User", b =>
                {
                    b.HasOne("WebApi.Application.Entities.PostalAddress", "PostalAddress")
                        .WithMany()
                        .HasForeignKey("PostalAddressId")
                        .HasConstraintName("fk_users_postal_address_postal_address_id");

                    b.Navigation("PostalAddress");
                });
#pragma warning restore 612, 618
        }
    }
}