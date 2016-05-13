/*
================================================================================
��ṹ����:TB_SUPBB
��ṹ����:¥��ͼֽ���ݱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBB;
drop index AK_TB_SUPBB;
drop table TB_SUPBB;
create table TB_SUPBB  (
   SUPBB001             VARCHAR2(30)                    not null,  /*ͼֽ���            */
   SUPBB002             INTEGER                         not null,  /*������            */
   SUPBB003             INTEGER                         not null,  /*�������            */
   SUPBB004             NUMBER(12,2)                    not null,  /*���Leftλ��        */
   SUPBB005             NUMBER(12,2)                    not null,  /*���Topλ��         */
   SUPBB006             NUMBER(12,2)                    not null,  /*������            */
   SUPBB007             NUMBER(12,2)                    not null,  /*����߶�            */
   SUPBB008             INTEGER                         not null,  /*Pen���             */
   SUPBB009             INTEGER                         not null,  /*Pen��ɫ             */
   SUPBB010             INTEGER                         not null,  /*PenStyle            */
   SUPBB011             INTEGER                         not null,  /*Brush��ɫ           */
   SUPBB012             INTEGER                         not null , /*BrushStyle          */
   SUPBB013             INTEGER                         not null,  /*Font��ɫ            */
   SUPBB014             VARCHAR2(30)                    not null,  /*Font����            */
   SUPBB015             INTEGER                         not null,  /*Font��С            */
   SUPBB016             VARCHAR2(100),                             /*FontStyle           */
   SUPBB017             INTEGER                         not null,  /*���ַ���            */
   SUPBB018             INTEGER                         not null,  /*ˮƽ���뷽ʽ        */
   SUPBB019             INTEGER                         not null,  /*��ֱ���뷽ʽ        */
   SUPBB020             VARCHAR2(1000),                            /*����                */
   SUPBB021             NUMBER(12,2)                    not null,  /*�ַ�X������߾�     */
   SUPBB022             NUMBER(12,2)                    not null,  /*�ַ�Y�����ϱ߾�     */
   SUPBB023             NUMBER(12,2)                    not null,  /*�ַ�X�����ұ߾�     */
   SUPBB024             NUMBER(12,2)                    not null,  /*�ַ�Y�����±߾�     */
   SUPBB025             INTEGER,                                   /*��������            */
   SUPBB026             VARCHAR2(30),                              /*���ݱ���            */
   SUPBB027             VARCHAR2(255),                             /*��������            */
   SUPBB028             INTEGER,                                   /*�����ʾ���ݷ�ʽ    */
   SUPBB029             INTEGER,                                   /*��ʾHINT��ʽ        */
   SUPBB030             VARCHAR2(1000),                            /*�û������HINT      */
   SUPBB031             INTEGER,                                   /*�Ƿ���ô����ݿ�ȡ�������ɫ */
   SUPBB032             INTEGER,                                   /*�Ƿ���Ӱ            */
   SUPBB090             VARCHAR2(200),                             /*��ע                */
   constraint PK_TB_SUPBB primary key (SUPBB001,SUPBB002)
);
/*create unique index AK_TB_SUPBB on TB_SUPBB (SUPBB001,SUPBB002);*/
create sequence SEQ_TB_SUPBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBB to public;
grant index  on TB_SUPBB to public;
grant update on TB_SUPBB to public; 
grant delete on TB_SUPBB to public;  
grant insert on TB_SUPBB to public; 
grant select on SEQ_TB_SUPBB to public;   
