/*
================================================================================
��ṹ����:TB_SUPBE
��ṹ����:����̯λ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPBE;
drop index AK_TB_SUPBE;
drop table TB_SUPBE;
create table TB_SUPBE  (
   SUPBE001             VARCHAR2(30)                    not null,  /*ͼֽ���            */
   SUPBE002             INTEGER                         not null,  /*������            */
   SUPBE003             INTEGER                         not null,  /*�������            */
   SUPBE004             NUMBER(12,2)                    not null,  /*���Leftλ��        */
   SUPBE005             NUMBER(12,2)                    not null,  /*���Topλ��         */
   SUPBE006             NUMBER(12,2)                    not null,  /*������            */
   SUPBE007             NUMBER(12,2)                    not null,  /*����߶�            */
   SUPBE008             INTEGER                         not null,  /*Pen���             */
   SUPBE009             INTEGER                         not null,  /*Pen��ɫ             */
   SUPBE010             INTEGER                         not null,  /*PenStyle            */
   SUPBE011             INTEGER                         not null,  /*Brush��ɫ           */
   SUPBE012             INTEGER                         not null , /*BrushStyle          */
   SUPBE013             INTEGER                         not null,  /*Font��ɫ            */
   SUPBE014             VARCHAR2(30)                    not null,  /*Font����            */
   SUPBE015             INTEGER                         not null,  /*Font��С            */
   SUPBE016             VARCHAR2(100),                             /*FontStyle           */
   SUPBE017             INTEGER                         not null,  /*���ַ���            */
   SUPBE018             INTEGER                         not null,  /*ˮƽ���뷽ʽ        */
   SUPBE019             INTEGER                         not null,  /*��ֱ���뷽ʽ        */
   SUPBE020             VARCHAR2(1000),                            /*����                */
   SUPBE021             NUMBER(12,2)                    not null,  /*�ַ�X������߾�     */
   SUPBE022             NUMBER(12,2)                    not null,  /*�ַ�Y�����ϱ߾�     */
   SUPBE023             NUMBER(12,2)                    not null,  /*�ַ�X�����ұ߾�     */
   SUPBE024             NUMBER(12,2)                    not null,  /*�ַ�Y�����±߾�     */
   SUPBE025             INTEGER,                                   /*��������            */
   SUPBE026             VARCHAR2(30),                              /*���ݱ���            */
   SUPBE027             VARCHAR2(255),                             /*��������            */
   SUPBE028             INTEGER,                                   /*�����ʾ���ݷ�ʽ    */
   SUPBE029             INTEGER,                                   /*��ʾHINT��ʽ        */
   SUPBE030             VARCHAR2(1000),                            /*�û������HINT      */
   SUPBE031             INTEGER,                                   /*�Ƿ���ô����ݿ�ȡ�������ɫ */
   SUPBE032             INTEGER,                                   /*�Ƿ���Ӱ            */
   SUPBE071             INTEGER,                                   /*����һ              */
   SUPBE072             INTEGER,                                   /*���ö�              */
   SUPBE073             INTEGER,                                   /*������              */
   SUPBE081             VARCHAR2(50),                              /*����һ              */
   SUPBE082             VARCHAR2(50),                              /*���ö�               */
   SUPBE083             VARCHAR2(50),                              /*������              */
   SUPBE090             VARCHAR2(200),                             /*��ע                */
   constraint PK_TB_SUPBE primary key (SUPBE001,SUPBE002)
);
/*create unique index AK_TB_SUPBE on TB_SUPBE (SUPBE001,SUPBE002);*/
create sequence SEQ_TB_SUPBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBE to public;
grant index  on TB_SUPBE to public;
grant update on TB_SUPBE to public; 
grant delete on TB_SUPBE to public;  
grant insert on TB_SUPBE to public; 
grant select on SEQ_TB_SUPBE to public;   
