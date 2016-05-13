/*
================================================================================
��ṹ����:TB_INVBD
��ṹ����:���������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVBD;
drop index AK_TB_INVBD;
drop table TB_INVBD;
create table TB_INVBD  (
   INVBD_ID            INTEGER                               not null,    /*������ϸID      */  
   INVBD001            INTEGER                               not null,    /*����������ID    */  
   INVBD002            VARCHAR2(1),                                       /*��Ʒ��������    */  
   INVBD003            VARCHAR2(1),                                       /*��������*/  
   INVBD004            INTEGER                               not null,    /*��ƷID        */  
   INVBD005            INTEGER,                                           /*ά��1           */  
   INVBD006            INTEGER,                                           /*ά��2           */  
   INVBD007            INTEGER,                                           /*ά��3           */  
   INVBD008            INTEGER,                                           /*ά��4           */  
   INVBD009            INTEGER,                                           /*ά��5           */  
   INVBD010            INTEGER                               not null,    /*��λ            */  
   INVBD011            NUMBER(12,2)                          not null,    /*��λ������      */  
   INVBD012            NUMBER(18,3)                          not null,    /*������          */  
   INVBD013            NUMBER(18,3)                          not null,    /*������          */  
   INVBD014            NUMBER(18,3)                          not null,    /*��������        */  
   INVBD015            NUMBER(12,2),                                      /*˰ǰ����        */  
   INVBD016            NUMBER(12,2),                                      /*˰ǰ���        */  
   INVBD017            NUMBER(12,2)                          not null,    /*��˰����        */  
   INVBD018            NUMBER(12,2)                          not null,    /*��˰���        */  
   INVBD019            INTEGER                               not null,    /*˰��            */  
   INVBD020            NUMBER(12,2)                          not null,    /*˰��            */  
   INVBD021            INTEGER                               not null,    /*��Ӧ��          */  
   INVBD022	       VARCHAR2(1)                           not null,    /*��Ӫ��ʽ        */ 
   INVBD023            VARCHAR2(255),                                     /*��ע            */
   INVBD024            NUMBER(12,2),                                      /*�ų���*/ --add by hansf 20100309
   INVBD025            VARCHAR2(1),                                       /*�Ƿ���װƷ*/
   INVBD026            VARCHAR2(1),                                       /*�Ƿ�ɷ�*/
   INVBD027            INTEGER                              ,             /*����ƷID           */
   INVBD028            INTEGER                                     ,      /*����           */
   INVBD029            VARCHAR2(30),                                      /*�����Ӧ��*/
   INVBD030            NUMBER(18,3),                                       /*���÷�̯���*/ --add by hansf 20110120
   INVBD035
   INVBD036
   INVBD037            VARCHAR2(255),                                     /*��ע1            */
   INVBD038            VARCHAR2(255),                                     /*��ע2            */
   INVBD039            VARCHAR2(255),                                     /*��ע3            */
   CREATE_USER          VARCHAR2(12),                                     /*������Ա             */
   USER_GROUP           VARCHAR2(12),                                     /*������Ա����         */                               
   CREATE_DATE          DATE,                                             /*��������             */
   MODIFIER             VARCHAR2(12),                                    /*�޸���Ա             */
   MODI_DATE            DATE,                                            /*�޸�����             */
   FLAG                 NUMBER(1),                                       /*����״̬             */
   constraint PK_TB_INVBD primary key (INVBD_ID)
);
create unique index AK_TB_INVBD on TB_INVBD (INVBD_ID,INVBD004);
create sequence SEQ_TB_INVBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBD to public;
grant index  on TB_INVBD to public;
grant update on TB_INVBD to public; 
grant delete on TB_INVBD to public;  
grant insert on TB_INVBD to public; 
grant select on SEQ_TB_INVBD to public;   