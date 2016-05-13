/*
================================================================================
��ṹ����:TB_GLDAD
��ṹ����:ƾ֤��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDAD;
drop index AK_TB_GLDAD;
drop table TB_GLDAD;
create table TB_GLDAD  (
   GLDAD_ID             INTEGER                         not null,   /*ƾ֤ID                 */
   GLDAD001             INTEGER                         not null,   /*�����˲�ID             */
   GLDAD002             INTEGER                         not null,   /*�������ID             */
   GLDAD003             INTEGER                         not null,   /*��˾ID                 */
   GLDAD004             INTEGER ,                                   /*ƾ֤����ID             */
   GLDAD005             INTEGER ,                                   /*ƾ֤��                 */
   GLDAD006             DATE,                                       /*��������               */
   GLDAD007             NUMBER(2),                                  /*��������               */
   GLDAD008             NUMBER(16,2),                               /*�跽�ϼ�               */
   GLDAD009             NUMBER(16,2),                               /*�����ϼ�               */
   GLDAD010             DATE                           not null,    /*�Ƶ�����               */
   GLDAD011             INTEGER                        not null,    /*�Ƶ���                 */
   GLDAD012             DATE,                                       /*ǩ������               */
   GLDAD013             INTEGER,                                    /*ǩ����                 */
   GLDAD014             VARCHAR2(1)                    not null,    /*ǩ����                 */
   GLDAD015             DATE,                                       /*�������               */
   GLDAD016             INTEGER,                                    /*�����                 */
   GLDAD017             VARCHAR2(1)                    not null,    /*�����                 */
   GLDAD018             DATE,                                       /*��������               */
   GLDAD019             INTEGER ,                                   /*������                 */
   GLDAD020             VARCHAR2(1)                    not null,    /*������                 */
   GLDAD021             VARCHAR2(255),                              /*��ע                   */
   GLDAD022             VARCHAR2(1)                   not null,     /*�Ƿ��ݴ�               */
   GLDAD023             VARCHAR2(1)                   not null,     /*��Դ                   */
   GLDAD024             VARCHAR2(1)                   not null,     /*�ڲ�����״̬           */
   GLDAD025             INTEGER,                                    /*�ڲ�������Դƾ֤��     */
   GLDAD026             VARCHAR2(1)                    not null,     /*�ⲿ����״̬           */
   GLDAD027             INTEGER,                                   /*�ⲿ������Դƾ֤��     */  
   GLDAD028             VARCHAR2(1)                    not null,    /*���                   */ 
   GLDAD029             NUMBER(4),                                 /*������                  */ 
   GLDAD030             NUMBER(2),                                 /*����ڼ�                   */   
   GLDAD031             INTEGER,                                   /*��Դ��������ID                   */                                                                                        
   CREATE_USER          VARCHAR2(12),                               /*������Ա               */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����           */                               
   CREATE_DATE          DATE,                                       /*��������               */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա               */
   MODI_DATE            DATE,                                       /*�޸�����               */
   FLAG                 NUMBER(1),                                  /*����״̬               */
   constraint PK_TB_GLDAD primary key (GLDAD_ID)
);
create unique index AK_TB_GLDAD on TB_GLDAD (GLDAD001,GLDAD002,GLDAD004,GLDAD005,GLDAD029,GLDAD030);
create sequence SEQ_TB_GLDAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAD to public;
grant index  on TB_GLDAD to public;
grant update on TB_GLDAD to public; 
grant delete on TB_GLDAD to public;  
grant insert on TB_GLDAD to public; 
grant select on SEQ_TB_GLDAD to public;   


