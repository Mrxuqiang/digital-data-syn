/*
================================================================================
��ṹ����:TB_AWBBD
��ṹ����: ƽ̨��־��                                                                                                                       
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_AWBBD;
drop index AK_TB_AWBBD;
drop table TB_AWBBD;
create table TB_AWBBD  (
   AWBBD_ID             INTEGER                         not null,   /*��־��ID                  */
   AWBBD001             INTEGER,                                    /*�������ID                */
   AWBBD002             INTEGER,                                    /*��������ID                */
   AWBBD003             INTEGER,                                    /*ģ��ID                    */
   AWBBD004             INTEGER,                                    /*����ID                    */
   AWBBD005             INTEGER ,                                   /*���ݺ�ID                  */
   AWBBD006             VARCHAR2(30) ,                              /*���ݺ�                    */
   AWBBD007             DATE ,                                      /*��������                  */
   AWBBD008             DATE,                                       /*����ʱ��                  */
   AWBBD009             VARCHAR2(255),                              /*������Ϣ                 */
   AWBBD010             INTEGER,                                    /*������ID                  */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                   */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����               */                               
   CREATE_DATE          DATE,                                       /*��������                   */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                   */
   MODI_DATE            DATE,                                       /*�޸�����                   */
   FLAG                 NUMBER(1),                                  /*����״̬                   */
   constraint PK_TB_AWBBD primary key (AWBBD_ID)
);
create sequence SEQ_TB_AWBBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBBD to public;
grant index  on TB_AWBBD to public;
grant update on TB_AWBBD to public; 
grant delete on TB_AWBBD to public;  
grant insert on TB_AWBBD to public; 
grant select on SEQ_TB_AWBBD to public;   