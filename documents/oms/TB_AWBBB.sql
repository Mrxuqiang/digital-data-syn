/*
================================================================================
��ṹ����:TB_AWBBB
��ṹ����:��ʱƾ֤��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AWBBB;
drop index AK_TB_AWBBB;
drop table TB_AWBBB;
create table TB_AWBBB  (
   AWBBB_ID             INTEGER                         not null,   /*��ʱƾ֤ID                 */
   AWBBB001             INTEGER                         not null,   /*�����˲�ID             */
   AWBBB002             INTEGER                         not null,   /*�������ID             */
   AWBBB003             INTEGER                         not null,   /*��˾ID                 */
   AWBBB004             INTEGER ,                                   /*ƾ֤����ID             */
   AWBBB005             INTEGER ,                                   /*ƾ֤��                 */
   AWBBB006             DATE,                                       /*��������               */
   AWBBB007             NUMBER(2),                                  /*��������               */
   AWBBB008             NUMBER(16,2),                               /*�跽�ϼ�               */
   AWBBB009             NUMBER(16,2),                               /*�����ϼ�               */
   AWBBB010             DATE                           not null,    /*�Ƶ�����               */
   AWBBB011             INTEGER                        not null,    /*�Ƶ���                 */
   AWBBB012             DATE,                                       /*ǩ������               */
   AWBBB013             INTEGER,                                    /*ǩ����                 */
   AWBBB014             VARCHAR2(1)                    not null,    /*ǩ����                 */
   AWBBB015             DATE,                                       /*�������               */
   AWBBB016             INTEGER,                                    /*�����                 */
   AWBBB017             VARCHAR2(1)                    not null,    /*�����                 */
   AWBBB018             DATE,                                       /*��������               */
   AWBBB019             INTEGER ,                                   /*������                 */
   AWBBB020             VARCHAR2(1)                    not null,    /*������                 */
   AWBBB021             VARCHAR2(255),                              /*��ע                   */
   AWBBB022             VARCHAR2(1)                   not null,     /*�Ƿ��ݴ�               */
   AWBBB023             VARCHAR2(1)                   not null,     /*��Դ                   */
   AWBBB024             VARCHAR2(1)                   not null,     /*�ڲ�����״̬           */
   AWBBB025             VARCHAR2(30),                               /*�ڲ�������Դƾ֤��     */
   AWBBB026             VARCHAR2(1)                    not null,    /*�ⲿ����״̬           */
   AWBBB027             VARCHAR2(30),                               /*�ⲿ������Դƾ֤��     */  
   AWBBB028             VARCHAR2(1)                    not null,    /*���                   */ 
   AWBBB029             NUMBER(4),                                  /*������                  */ 
   AWBBB030             NUMBER(2),                                  /*����ڼ�                   */                                                                                        
   CREATE_USER          VARCHAR2(12),                               /*������Ա               */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����           */                               
   CREATE_DATE          DATE,                                       /*��������               */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա               */
   MODI_DATE            DATE,                                       /*�޸�����               */
   FLAG                 NUMBER(1),                                  /*����״̬               */
   constraint PK_TB_AWBBB primary key (AWBBB_ID)
);
create sequence SEQ_TB_AWBBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBBB to public;
grant index  on TB_AWBBB to public;
grant update on TB_AWBBB to public; 
grant delete on TB_AWBBB to public;  
grant insert on TB_AWBBB to public; 
grant select on SEQ_TB_AWBBB to public;   


